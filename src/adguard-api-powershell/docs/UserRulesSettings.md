# UserRulesSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** | Whether all rules are enabled | 
**Rules** | **String[]** | List of rules | 
**RulesCount** | **Int32** | Rules count in user list | 

## Examples

- Prepare the resource
```powershell
$UserRulesSettings = Initialize-PSAdGuardDNSUserRulesSettings  -Enabled null `
 -Rules [&quot;||example.org^&quot;] `
 -RulesCount 50
```

- Convert the resource to JSON
```powershell
$UserRulesSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

