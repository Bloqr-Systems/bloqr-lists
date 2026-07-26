# DNSServerSettingsUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessSettings** | [**DNSServerAccessSettingsUpdate**](DNSServerAccessSettingsUpdate.md) |  | [optional] 
**AutoConnectDevicesEnabled** | **Boolean** | Whether to allow auto-connecting through link type | [optional] 
**BlockChromePrefetch** | **Boolean** | Whether to block Google Chrome prefetch proxy | [optional] 
**BlockFirefoxCanary** | **Boolean** | Whether Firefox Canary should be blocked | [optional] 
**BlockPrivateRelay** | **Boolean** | Whether private relay should be blocked | [optional] 
**BlockTtlSeconds** | **Int32** | TTL for blocked request | [optional] 
**BlockingModeSettings** | [**BlockingModeSettingsUpdate**](BlockingModeSettingsUpdate.md) |  | [optional] 
**FilterListsSettings** | [**FilterListsSettingsUpdate**](FilterListsSettingsUpdate.md) |  | [optional] 
**IpLogEnabled** | **Boolean** | Whether to log IP addresses of requests | [optional] 
**ParentalControlSettings** | [**ParentalControlSettingsUpdate**](ParentalControlSettingsUpdate.md) |  | [optional] 
**ProtectionEnabled** | **Boolean** | Whether protection is enabled | [optional] 
**SafebrowsingSettings** | [**SafebrowsingSettingsUpdate**](SafebrowsingSettingsUpdate.md) |  | [optional] 
**UserRulesSettings** | [**UserRulesSettingsUpdate**](UserRulesSettingsUpdate.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DNSServerSettingsUpdate = Initialize-PSAdGuardDNSDNSServerSettingsUpdate  -AccessSettings null `
 -AutoConnectDevicesEnabled null `
 -BlockChromePrefetch null `
 -BlockFirefoxCanary null `
 -BlockPrivateRelay null `
 -BlockTtlSeconds 3600 `
 -BlockingModeSettings null `
 -FilterListsSettings null `
 -IpLogEnabled null `
 -ParentalControlSettings null `
 -ProtectionEnabled null `
 -SafebrowsingSettings null `
 -UserRulesSettings null
```

- Convert the resource to JSON
```powershell
$DNSServerSettingsUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

