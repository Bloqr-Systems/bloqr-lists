# BlockedParentalCategoryQueriesStats
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Blocked** | **Int64** | Blocked queries count | 
**Category** | **String** | Category | 

## Examples

- Prepare the resource
```powershell
$BlockedParentalCategoryQueriesStats = Initialize-PSAdGuardDNSBlockedParentalCategoryQueriesStats  -Blocked 14 `
 -Category audio
```

- Convert the resource to JSON
```powershell
$BlockedParentalCategoryQueriesStats | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

