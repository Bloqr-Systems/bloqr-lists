# ParentalControlSettingsUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**block_adult_websites_enabled** | Option<**bool**> | Whether to block adult content | [optional]
**blocked_filtering_categories** | Option<[**Vec<models::BlockedFilteringCategoryUpdate>**](BlockedFilteringCategoryUpdate.md)> | List of filtering categories with restricted access | [optional]
**blocked_services** | Option<[**Vec<models::BlockedWebServiceUpdate>**](BlockedWebServiceUpdate.md)> | List of blocked services | [optional]
**enabled** | Option<**bool**> | Whether parental control is enabled | [optional]
**engines_safe_search_enabled** | Option<**bool**> | Whether to enforce safe search on supported search engines | [optional]
**screen_time_schedule** | Option<[**models::ScheduleWeekUpdate**](ScheduleWeekUpdate.md)> |  | [optional]
**youtube_safe_search_enabled** | Option<**bool**> | Whether to enforce safe search on YouTube | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


