# ParentalControlSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BlockAdultWebsitesEnabled** | **Boolean** | Whether to block adult content | 
**BlockedServices** | [**BlockedWebService[]**](BlockedWebService.md) | List of blocked services | 
**Enabled** | **Boolean** | Whether parental control is enabled | 
**EnginesSafeSearchEnabled** | **Boolean** | Whether to enforce safe search on supported search engines | 
**ScreenTimeSchedule** | [**ScheduleWeek**](ScheduleWeek.md) |  | 
**YoutubeSafeSearchEnabled** | **Boolean** | Whether to enforce safe search on YouTube | 

## Examples

- Prepare the resource
```powershell
$ParentalControlSettings = Initialize-PSAdGuardDNSParentalControlSettings  -BlockAdultWebsitesEnabled null `
 -BlockedServices null `
 -Enabled null `
 -EnginesSafeSearchEnabled null `
 -ScreenTimeSchedule null `
 -YoutubeSafeSearchEnabled null
```

- Convert the resource to JSON
```powershell
$ParentalControlSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

