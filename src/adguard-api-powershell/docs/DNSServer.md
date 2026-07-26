# DNSServer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Default** | **Boolean** | Whether this is the default DNS server | 
**DeviceIds** | **String[]** | Scheduled for removal in January 2027 | [optional] 
**DevicesCount** | **Int32** | Connected devices count | 
**Id** | **String** | DNS server ID | 
**Name** | **String** | Name | 
**Settings** | [**DNSServerSettings**](DNSServerSettings.md) |  | 

## Examples

- Prepare the resource
```powershell
$DNSServer = Initialize-PSAdGuardDNSDNSServer  -Default false `
 -DeviceIds null `
 -DevicesCount 5 `
 -Id a9f29be1 `
 -Name Main DNS server `
 -Settings null
```

- Convert the resource to JSON
```powershell
$DNSServer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

