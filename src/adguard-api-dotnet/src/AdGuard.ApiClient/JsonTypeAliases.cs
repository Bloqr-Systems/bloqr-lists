// Prevent ambiguity between Newtonsoft.Json and System.Text.Json types used in generated code.
// Map short/unqualified JSON type/attribute names used in generated sources to Newtonsoft.Json equivalents.

using JsonConstructorAttribute = Newtonsoft.Json.JsonConstructorAttribute;
using JsonConstructor = Newtonsoft.Json.JsonConstructorAttribute;

// Attributes
using JsonConverterAttribute = Newtonsoft.Json.JsonConverterAttribute;
using JsonConverter = Newtonsoft.Json.JsonConverter; // Newtonsoft.Json.JsonConverter
using JsonIgnoreAttribute = Newtonsoft.Json.JsonIgnoreAttribute;
using JsonIgnore = Newtonsoft.Json.JsonIgnoreAttribute;
using JsonPropertyAttribute = Newtonsoft.Json.JsonPropertyAttribute;
using JsonProperty = Newtonsoft.Json.JsonPropertyAttribute;

// Serializer types
using JsonSerializer = Newtonsoft.Json.JsonSerializer;
using JsonSerializerSettings = Newtonsoft.Json.JsonSerializerSettings;
