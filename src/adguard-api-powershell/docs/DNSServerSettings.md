# DNSServerSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessSettings** | [**DNSServerAccessSettings**](DNSServerAccessSettings.md) |  | 
**AutoConnectDevicesEnabled** | **Boolean** | Whether to allow auto-connecting through link type | 
**BlockChromePrefetch** | **Boolean** | Whether to block Google Chrome prefetch proxy | 
**BlockFirefoxCanary** | **Boolean** | Whether Firefox Canary should be blocked | 
**BlockPrivateRelay** | **Boolean** | Whether private relay should be blocked | 
**BlockTtlSeconds** | **Int32** | Blocked response TTL in seconds | 
**BlockingModeSettings** | [**BlockingModeSettings**](BlockingModeSettings.md) |  | 
**FilterListsSettings** | [**FilterListsSettings**](FilterListsSettings.md) |  | 
**IpLogEnabled** | **Boolean** | Whether to log IP addresses of requests | 
**ParentalControlSettings** | [**ParentalControlSettings**](ParentalControlSettings.md) |  | 
**ProtectionEnabled** | **Boolean** | Whether protection is enabled | 
**SafebrowsingSettings** | [**SafebrowsingSettings**](SafebrowsingSettings.md) |  | 
**UserRulesSettings** | [**UserRulesSettings**](UserRulesSettings.md) |  | 

## Examples

- Prepare the resource
```powershell
$DNSServerSettings = Initialize-PSAdGuardDNSDNSServerSettings  -AccessSettings null `
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
$DNSServerSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

