# AdGuard.ApiClient.Model.ParentalControlSettingsUpdate
Parental control settings update request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BlockAdultWebsitesEnabled** | **bool** | Whether to block adult content | [optional] 
**BlockedFilteringCategories** | [**List&lt;BlockedFilteringCategoryUpdate&gt;**](BlockedFilteringCategoryUpdate.md) | List of filtering categories with restricted access | [optional] 
**BlockedServices** | [**List&lt;BlockedWebServiceUpdate&gt;**](BlockedWebServiceUpdate.md) | List of blocked services | [optional] 
**Enabled** | **bool** | Whether parental control is enabled | [optional] 
**EnginesSafeSearchEnabled** | **bool** | Whether to enforce safe search on supported search engines | [optional] 
**ScreenTimeSchedule** | [**ScheduleWeekUpdate**](ScheduleWeekUpdate.md) |  | [optional] 
**YoutubeSafeSearchEnabled** | **bool** | Whether to enforce safe search on YouTube | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

