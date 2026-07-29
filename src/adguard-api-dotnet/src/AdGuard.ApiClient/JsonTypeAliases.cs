// This file resolves ambiguous Json type names used in generated code.
// It forces unqualified references such as [JsonConstructor] and JsonConverter
// to refer to Newtonsoft.Json types instead of System.Text.Json types.

using JsonConstructorAttribute = Newtonsoft.Json.JsonConstructorAttribute;
using JsonConstructor = Newtonsoft.Json.JsonConstructorAttribute;        // allow [JsonConstructor]
using JsonConverterAttribute = Newtonsoft.Json.JsonConverterAttribute;
using JsonConverter = Newtonsoft.Json.JsonConverterAttribute;           // allow [JsonConverter(...)]
using JsonSerializer = Newtonsoft.Json.JsonSerializer;
