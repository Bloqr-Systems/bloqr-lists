# Navigation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Next** | [**NavigationPage**](NavigationPage.md) |  | [optional] 
**Prev** | [**NavigationPage**](NavigationPage.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Navigation = Initialize-PSAdGuardDNSNavigation  -Next null `
 -Prev null
```

- Convert the resource to JSON
```powershell
$Navigation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

