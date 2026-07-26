# NavigationPage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PageCursor** | **String** | Pagination cursor for this page | 
**PageNumber** | **Int32** | Page number, positive | 

## Examples

- Prepare the resource
```powershell
$NavigationPage = Initialize-PSAdGuardDNSNavigationPage  -PageCursor MTY0NTQ1MTQxOTQ0MToxOjIwOjMxMTg&#x3D; `
 -PageNumber 1
```

- Convert the resource to JSON
```powershell
$NavigationPage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

