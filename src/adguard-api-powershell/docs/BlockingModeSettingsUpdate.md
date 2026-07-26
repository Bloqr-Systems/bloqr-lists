# BlockingModeSettingsUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BlockingMode** | [**BlockingMode**](BlockingMode.md) |  | 
**Ipv4BlockingAddress** | **String** | Custom IPv4 address for blocking mode CUSTOM IP | [optional] 
**Ipv6BlockingAddress** | **String** | Custom IPv6 address for blocking mode CUSTOM IP | [optional] 

## Examples

- Prepare the resource
```powershell
$BlockingModeSettingsUpdate = Initialize-PSAdGuardDNSBlockingModeSettingsUpdate  -BlockingMode null `
 -Ipv4BlockingAddress 0.0.0.0 `
 -Ipv6BlockingAddress ::
```

- Convert the resource to JSON
```powershell
$BlockingModeSettingsUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

