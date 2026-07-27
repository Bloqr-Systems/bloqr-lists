# DedicatedIps
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ipv4** | **String[]** | Dedicated IPv4 address | 
**Ipv4Limit** | [**Limit**](Limit.md) |  | 
**Ipv6** | **String[]** | Dedicated IPv6 address | 

## Examples

- Prepare the resource
```powershell
$DedicatedIps = Initialize-PSAdGuardDNSDedicatedIps  -Ipv4 [&quot;94.140.14.15&quot;] `
 -Ipv4Limit null `
 -Ipv6 [&quot;2a10:50c0::ad1:ff&quot;]
```

- Convert the resource to JSON
```powershell
$DedicatedIps | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

