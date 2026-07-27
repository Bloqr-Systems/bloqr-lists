# Limit
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Limit** | **Int32** | Max count | 
**Used** | **Int64** | Used count | 

## Examples

- Prepare the resource
```powershell
$Limit = Initialize-PSAdGuardDNSLimit  -Limit 100 `
 -Used 5
```

- Convert the resource to JSON
```powershell
$Limit | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

