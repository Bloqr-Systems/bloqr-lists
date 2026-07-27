# DevicesResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**Device[]**](Device.md) | List of devices | 
**Navigation** | [**Navigation**](Navigation.md) |  | 

## Examples

- Prepare the resource
```powershell
$DevicesResponse = Initialize-PSAdGuardDNSDevicesResponse  -Items null `
 -Navigation null
```

- Convert the resource to JSON
```powershell
$DevicesResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

