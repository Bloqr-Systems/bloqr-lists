# DNSServerAccessSettingsUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowedClients** | **String[]** | Allowed IP&#39;s, CIDR&#39;s or ASN&#39;s | [optional] 
**BlockKnownScanners** | **Boolean** | Whether known scanners should be blocked | [optional] 
**BlockedClients** | **String[]** | Blocked IP&#39;s, CIDR&#39;s or ASN&#39;s | [optional] 
**BlockedDomainRules** | **String[]** | Blocked domain rules | [optional] 
**Enabled** | **Boolean** | Whether access settings are enabled | [optional] 

## Examples

- Prepare the resource
```powershell
$DNSServerAccessSettingsUpdate = Initialize-PSAdGuardDNSDNSServerAccessSettingsUpdate  -AllowedClients [&quot;192.168.1.0/24&quot;] `
 -BlockKnownScanners null `
 -BlockedClients [&quot;10.0.0.0/8&quot;] `
 -BlockedDomainRules [&quot;example.org&quot;] `
 -Enabled null
```

- Convert the resource to JSON
```powershell
$DNSServerAccessSettingsUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

