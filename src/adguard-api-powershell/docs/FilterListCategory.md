# FilterListCategory
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Category** | [**FilterListCategoryType**](FilterListCategoryType.md) |  | 
**Description** | **String** | Localized description | 
**Value** | **String** | Filter category value | [optional] 

## Examples

- Prepare the resource
```powershell
$FilterListCategory = Initialize-PSAdGuardDNSFilterListCategory  -Category null `
 -Description Filters for security threats `
 -Value security
```

- Convert the resource to JSON
```powershell
$FilterListCategory | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

