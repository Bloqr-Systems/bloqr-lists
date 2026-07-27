# SafebrowsingSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BlockDangerousDomains** | **Boolean** | Whether filtering dangerous domains are enabled | 
**BlockNrd** | **Boolean** | Whether filtering newly registered domains are enabled | 
**BlockingModeSettings** | [**BlockingModeSettings**](BlockingModeSettings.md) |  | 
**Enabled** | **Boolean** | Whether safebrowsing settings are enabled | 
**HomoglyphProtectionEnabled** | **Boolean** | Whether homoglyph (IDN) protection is enabled | 
**TyposquattingProtectionEnabled** | **Boolean** | Whether typosquatting protection is enabled | 

## Examples

- Prepare the resource
```powershell
$SafebrowsingSettings = Initialize-PSAdGuardDNSSafebrowsingSettings  -BlockDangerousDomains null `
 -BlockNrd null `
 -BlockingModeSettings null `
 -Enabled null `
 -HomoglyphProtectionEnabled null `
 -TyposquattingProtectionEnabled null
```

- Convert the resource to JSON
```powershell
$SafebrowsingSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

