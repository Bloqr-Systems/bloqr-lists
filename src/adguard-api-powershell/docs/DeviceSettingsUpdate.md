# DeviceSettingsUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DetectDohAuthOnly** | **Boolean** | Whether to use only DNS-over-HTTPS with authentication | [optional] 
**ProtectionEnabled** | **Boolean** | Whether to enable protection | [optional] 

## Examples

- Prepare the resource
```powershell
$DeviceSettingsUpdate = Initialize-PSAdGuardDNSDeviceSettingsUpdate  -DetectDohAuthOnly null `
 -ProtectionEnabled null
```

- Convert the resource to JSON
```powershell
$DeviceSettingsUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

