# \ReferenceDataApi

All URIs are relative to *https://api.adguard-dns.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_filter_lists**](ReferenceDataApi.md#list_filter_lists) | **GET** /oapi/v1/filter_lists | Lists filter lists
[**list_parental_control_filtering_categories**](ReferenceDataApi.md#list_parental_control_filtering_categories) | **GET** /oapi/v1/parental_control_categories | Lists all parental control filtering categories
[**list_web_services**](ReferenceDataApi.md#list_web_services) | **GET** /oapi/v1/web_services | Lists web services



## list_filter_lists

> Vec<models::FilterList> list_filter_lists()
Lists filter lists

Returns available filter lists for the current locale. Use this endpoint to retrieve filter definitions before applying them to DNS server settings. 

### Parameters

This endpoint does not need any parameter.

### Return type

[**Vec<models::FilterList>**](FilterList.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_parental_control_filtering_categories

> Vec<models::ParentalControlFilteringCategory> list_parental_control_filtering_categories()
Lists all parental control filtering categories

Returns all available parental control filtering categories. Use this endpoint to retrieve categories for configuring parental control settings on a DNS server. 

### Parameters

This endpoint does not need any parameter.

### Return type

[**Vec<models::ParentalControlFilteringCategory>**](ParentalControlFilteringCategory.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_web_services

> Vec<models::WebService> list_web_services()
Lists web services

Returns a list of known web services with their identifiers and icons. Use this endpoint to get service data for parental control configuration. 

### Parameters

This endpoint does not need any parameter.

### Return type

[**Vec<models::WebService>**](WebService.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

