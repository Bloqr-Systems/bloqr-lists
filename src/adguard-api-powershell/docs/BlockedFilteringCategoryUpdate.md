# BlockedFilteringCategoryUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** | Whether category blocking is enabled | [optional] 
**Id** | **String** | Category identifier | 

## Examples

- Prepare the resource
```powershell
$BlockedFilteringCategoryUpdate = Initialize-PSAdGuardDNSBlockedFilteringCategoryUpdate  -Enabled null `
 -Id adult
```

- Convert the resource to JSON
```powershell
$BlockedFilteringCategoryUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

