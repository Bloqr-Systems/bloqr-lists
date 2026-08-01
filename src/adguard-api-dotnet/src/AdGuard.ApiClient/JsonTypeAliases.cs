// Prevent ambiguity between Newtonsoft.Json and System.Text.Json types used in generated code.
// Map short/unqualified JSON type/attribute names used in generated sources to Newtonsoft.Json equivalents.
//
// These must be `global using` aliases: a plain `using` alias is scoped to this file only and has
// no effect on any other file in the project, so it silently does nothing if another file (or
// GlobalUsings.cs) brings System.Text.Json into scope project-wide.

global using JsonConstructorAttribute = Newtonsoft.Json.JsonConstructorAttribute;
global using JsonConstructor = Newtonsoft.Json.JsonConstructorAttribute;

// Attributes
global using JsonConverterAttribute = Newtonsoft.Json.JsonConverterAttribute;
global using JsonConverter = Newtonsoft.Json.JsonConverter; // Newtonsoft.Json.JsonConverter
global using JsonIgnoreAttribute = Newtonsoft.Json.JsonIgnoreAttribute;
global using JsonIgnore = Newtonsoft.Json.JsonIgnoreAttribute;
global using JsonPropertyAttribute = Newtonsoft.Json.JsonPropertyAttribute;
global using JsonProperty = Newtonsoft.Json.JsonPropertyAttribute;

// Serializer types
global using JsonSerializer = Newtonsoft.Json.JsonSerializer;
global using JsonSerializerSettings = Newtonsoft.Json.JsonSerializerSettings;
