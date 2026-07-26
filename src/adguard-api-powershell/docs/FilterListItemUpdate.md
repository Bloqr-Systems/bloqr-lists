# FilterListItemUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** | Whether the filter is enabled | [optional] 
**FilterId** | **String** | Filter identifier | 

## Examples

- Prepare the resource
```powershell
$FilterListItemUpdate = Initialize-PSAdGuardDNSFilterListItemUpdate  -Enabled null `
 -FilterId adguard_dns_filter
```

- Convert the resource to JSON
```powershell
$FilterListItemUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

