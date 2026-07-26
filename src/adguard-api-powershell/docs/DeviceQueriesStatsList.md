# DeviceQueriesStatsList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Navigation** | [**Navigation**](Navigation.md) |  | 
**Stats** | [**DeviceQueriesStats[]**](DeviceQueriesStats.md) | List of queries stats | 

## Examples

- Prepare the resource
```powershell
$DeviceQueriesStatsList = Initialize-PSAdGuardDNSDeviceQueriesStatsList  -Navigation null `
 -Stats null
```

- Convert the resource to JSON
```powershell
$DeviceQueriesStatsList | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

