# SafebrowsingSettingsUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BlockDangerousDomains** | **Boolean** | Whether filtering dangerous domains are enabled | [optional] 
**BlockNrd** | **Boolean** | Whether filtering newly registered domains are enabled | [optional] 
**BlockingModeSettings** | [**BlockingModeSettingsUpdate**](BlockingModeSettingsUpdate.md) |  | [optional] 
**Enabled** | **Boolean** | Whether safebrowsing settings are enabled | [optional] 
**HomoglyphProtectionEnabled** | **Boolean** | Whether homoglyph (IDN) protection is enabled | [optional] 
**TyposquattingProtectionEnabled** | **Boolean** | Whether typosquatting protection is enabled | [optional] 

## Examples

- Prepare the resource
```powershell
$SafebrowsingSettingsUpdate = Initialize-PSAdGuardDNSSafebrowsingSettingsUpdate  -BlockDangerousDomains null `
 -BlockNrd null `
 -BlockingModeSettings null `
 -Enabled null `
 -HomoglyphProtectionEnabled null `
 -TyposquattingProtectionEnabled null
```

- Convert the resource to JSON
```powershell
$SafebrowsingSettingsUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

