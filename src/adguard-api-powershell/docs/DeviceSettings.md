# DeviceSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DetectDohAuthOnly** | **Boolean** | Whether to use only DNS-over-HTTPS with authentication | 
**ProtectionEnabled** | **Boolean** | Whether protection is enabled | 

## Examples

- Prepare the resource
```powershell
$DeviceSettings = Initialize-PSAdGuardDNSDeviceSettings  -DetectDohAuthOnly null `
 -ProtectionEnabled null
```

- Convert the resource to JSON
```powershell
$DeviceSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

