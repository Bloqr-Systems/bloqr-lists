# DnsServersResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**DNSServer[]**](DNSServer.md) | List of DNS servers | 
**Navigation** | [**Navigation**](Navigation.md) |  | 

## Examples

- Prepare the resource
```powershell
$DnsServersResponse = Initialize-PSAdGuardDNSDnsServersResponse  -Items null `
 -Navigation null
```

- Convert the resource to JSON
```powershell
$DnsServersResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

