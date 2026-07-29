#!/usr/bin/env bash
# Regenerate AdGuard API Client from OpenAPI specification
# This script uses OpenAPI Generator to regenerate the C# client code

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
API_DIR="${SCRIPT_DIR}/api"
SRC_DIR="${SCRIPT_DIR}/src"
OPENAPI_SPEC="${API_DIR}/openapi.json"
OUTPUT_DIR="${SCRIPT_DIR}"
GENERATOR_VERSION="7.16.0"

echo "=========================================="
echo "AdGuard API Client Regeneration Script"
echo "=========================================="
echo ""

# Check if OpenAPI spec exists
if [ ! -f "${OPENAPI_SPEC}" ]; then
    echo "ERROR: OpenAPI specification not found at: ${OPENAPI_SPEC}"
    echo ""
    echo "Please ensure the OpenAPI spec is available at:"
    echo "  ${API_DIR}/openapi.json"
    echo ""
    echo "You can obtain the latest spec from AdGuard DNS API documentation:"
    echo "  https://adguard-dns.io/kb/private-dns/api/overview/"
    echo ""
    exit 1
fi

# Check if openapi-generator-cli is installed
if ! command -v openapi-generator-cli &> /dev/null; then
    echo "ERROR: openapi-generator-cli not found"
    echo ""
    echo "Please install OpenAPI Generator CLI:" 
    echo "  npm install -g @openapitools/openapi-generator-cli"
    echo ""
    echo "Or use Docker:" 
    echo "  docker run --rm -v \"${PWD}:/local\" openapitools/openapi-generator-cli generate \\"
    echo "    -i /local/api/openapi.json \\" 
    echo "    -g csharp \\" 
    echo "    -o /local \\" 
    echo "    --additional-properties=targetFramework=net10.0,packageName=AdGuard.ApiClient"
    exit 1
fi

echo "OpenAPI Spec: ${OPENAPI_SPEC}"
echo "Output Directory: ${OUTPUT_DIR}"
echo "Generator Version: ${GENERATOR_VERSION}"
echo ""

# Put backups outside the output directory (one level up) to avoid being picked up by wildcard compile includes
BACKUP_DIR="$(dirname "${SCRIPT_DIR}")/.adguard-api-client-backup-$(date +%Y%m%d_%H%M%S)"
echo "Creating backup at: ${BACKUP_DIR}"
mkdir -p "${BACKUP_DIR}"
cp -r "${SRC_DIR}/AdGuard.ApiClient" "${BACKUP_DIR}/" 2>/dev/null || true
echo ""

# Generate the client
echo "Generating C# client code..."
echo ""

openapi-generator-cli generate \
    -i "${OPENAPI_SPEC}" \
    -g csharp \
    -o "${OUTPUT_DIR}" \
    --additional-properties=\
targetFramework=net10.0,\
packageName=AdGuard.ApiClient,\
packageVersion=1.0.0,\
jsonLibrary=Newtonsoft.Json,\
validatable=false,\
netCoreProjectFile=true,\
nullableReferenceTypes=true

# Create JsonTypeAliases.cs to avoid ambiguous Json* types between Newtonsoft.Json and System.Text.Json
ALIAS_DIR="${SRC_DIR}/AdGuard.ApiClient"
ALIAS_FILE="${ALIAS_DIR}/JsonTypeAliases.cs"

mkdir -p "${ALIAS_DIR}"
cat > "${ALIAS_FILE}" <<'EOF'
// Prevent ambiguity between Newtonsoft.Json and System.Text.Json types used in generated code.
// Map unqualified names used by generated classes to Newtonsoft.Json equivalents.

using JsonConstructorAttribute = Newtonsoft.Json.JsonConstructorAttribute;
using JsonConstructor = Newtonsoft.Json.JsonConstructorAttribute;
using JsonConverterAttribute = Newtonsoft.Json.JsonConverterAttribute;
using JsonConverter = Newtonsoft.Json.JsonConverterAttribute;
using JsonSerializer = Newtonsoft.Json.JsonSerializer;
EOF

echo "Wrote JSON alias file: ${ALIAS_FILE}"

echo ""
echo "=========================================="
echo "Generation Complete!"
echo "=========================================="
echo ""
echo "Next steps:"
echo "  1. Review generated code in: ${SRC_DIR}/AdGuard.ApiClient/"
echo "  2. Apply any custom modifications from: ${BACKUP_DIR}/"
echo "  3. Build the solution: dotnet build AdGuard.ApiClient.slnx"
echo "  4. Run tests: dotnet test AdGuard.ApiClient.slnx"
echo ""
echo "Backup location: ${BACKUP_DIR}"
echo ""
