# CompanyDetailedQueriesStatsList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Navigation** | [**Navigation**](Navigation.md) |  | 
**Pages** | [**Page[]**](Page.md) | Pagination. Field is deprecated and scheduled for removal in January 2027. Use &#x60;navigation&#x60; instead | [optional] 
**Stats** | [**CompanyDetailedQueriesStats[]**](CompanyDetailedQueriesStats.md) | List of queries stats | 

## Examples

- Prepare the resource
```powershell
$CompanyDetailedQueriesStatsList = Initialize-PSAdGuardDNSCompanyDetailedQueriesStatsList  -Navigation null `
 -Pages null `
 -Stats null
```

- Convert the resource to JSON
```powershell
$CompanyDetailedQueriesStatsList | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

