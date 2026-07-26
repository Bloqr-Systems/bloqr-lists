# ParentalControlSettingsUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BlockAdultWebsitesEnabled** | **Boolean** | Whether to block adult content | [optional] 
**BlockedFilteringCategories** | [**BlockedFilteringCategoryUpdate[]**](BlockedFilteringCategoryUpdate.md) | List of filtering categories with restricted access | [optional] 
**BlockedServices** | [**BlockedWebServiceUpdate[]**](BlockedWebServiceUpdate.md) | List of blocked services | [optional] 
**Enabled** | **Boolean** | Whether parental control is enabled | [optional] 
**EnginesSafeSearchEnabled** | **Boolean** | Whether to enforce safe search on supported search engines | [optional] 
**ScreenTimeSchedule** | [**ScheduleWeekUpdate**](ScheduleWeekUpdate.md) |  | [optional] 
**YoutubeSafeSearchEnabled** | **Boolean** | Whether to enforce safe search on YouTube | [optional] 

## Examples

- Prepare the resource
```powershell
$ParentalControlSettingsUpdate = Initialize-PSAdGuardDNSParentalControlSettingsUpdate  -BlockAdultWebsitesEnabled null `
 -BlockedFilteringCategories null `
 -BlockedServices null `
 -Enabled null `
 -EnginesSafeSearchEnabled null `
 -ScreenTimeSchedule null `
 -YoutubeSafeSearchEnabled null
```

- Convert the resource to JSON
```powershell
$ParentalControlSettingsUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

