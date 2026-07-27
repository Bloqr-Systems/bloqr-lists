# AdGuard.ApiClient.Model.DNSServerSettingsUpdate
DNS server settings update request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessSettings** | [**DNSServerAccessSettingsUpdate**](DNSServerAccessSettingsUpdate.md) |  | [optional] 
**AutoConnectDevicesEnabled** | **bool** | Whether to allow auto-connecting through link type | [optional] 
**BlockChromePrefetch** | **bool** | Whether to block Google Chrome prefetch proxy | [optional] 
**BlockFirefoxCanary** | **bool** | Whether Firefox Canary should be blocked | [optional] 
**BlockPrivateRelay** | **bool** | Whether private relay should be blocked | [optional] 
**BlockTtlSeconds** | **int** | TTL for blocked request | [optional] 
**BlockingModeSettings** | [**BlockingModeSettingsUpdate**](BlockingModeSettingsUpdate.md) |  | [optional] 
**FilterListsSettings** | [**FilterListsSettingsUpdate**](FilterListsSettingsUpdate.md) |  | [optional] 
**IpLogEnabled** | **bool** | Whether to log IP addresses of requests | [optional] 
**ParentalControlSettings** | [**ParentalControlSettingsUpdate**](ParentalControlSettingsUpdate.md) |  | [optional] 
**ProtectionEnabled** | **bool** | Whether protection is enabled | [optional] 
**SafebrowsingSettings** | [**SafebrowsingSettingsUpdate**](SafebrowsingSettingsUpdate.md) |  | [optional] 
**UserRulesSettings** | [**UserRulesSettingsUpdate**](UserRulesSettingsUpdate.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

