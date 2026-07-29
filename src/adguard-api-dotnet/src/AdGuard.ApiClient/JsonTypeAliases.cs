// Prevent ambiguity between Newtonsoft.Json and System.Text.Json types used in generated code.
// Map unqualified names used by generated classes to Newtonsoft.Json equivalents.

using JsonConstructorAttribute = Newtonsoft.Json.JsonConstructorAttribute;
using JsonConstructor = Newtonsoft.Json.JsonConstructorAttribute;
using JsonConverterAttribute = Newtonsoft.Json.JsonConverterAttribute;
using JsonConverter = Newtonsoft.Json.JsonConverter; // map to the Newtonsoft.Json.JsonConverter class
using JsonSerializer = Newtonsoft.Json.JsonSerializer;
