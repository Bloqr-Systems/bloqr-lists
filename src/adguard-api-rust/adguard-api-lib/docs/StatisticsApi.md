# \StatisticsApi

All URIs are relative to *https://api.adguard-dns.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_blocked_parental_category_stats**](StatisticsApi.md#get_blocked_parental_category_stats) | **GET** /oapi/v1/stats/blocked_parental_categories | Gets statistics for blocked parental control categories
[**get_categories_queries_stats**](StatisticsApi.md#get_categories_queries_stats) | **GET** /oapi/v1/stats/categories | Gets categories statistics
[**get_companies_stats**](StatisticsApi.md#get_companies_stats) | **GET** /oapi/v1/stats/companies | Gets companies statistics
[**get_countries_queries_stats**](StatisticsApi.md#get_countries_queries_stats) | **GET** /oapi/v1/stats/countries | Gets countries statistics
[**get_detailed_companies_stats**](StatisticsApi.md#get_detailed_companies_stats) | **GET** /oapi/v1/stats/companies/detailed | Gets detailed companies statistics
[**get_devices_queries_stats**](StatisticsApi.md#get_devices_queries_stats) | **GET** /oapi/v1/stats/devices | Gets devices statistics
[**get_domains_queries_stats**](StatisticsApi.md#get_domains_queries_stats) | **GET** /oapi/v1/stats/domains | Gets domains statistics
[**get_time_queries_stats**](StatisticsApi.md#get_time_queries_stats) | **GET** /oapi/v1/stats/time | Gets time statistics



## get_blocked_parental_category_stats

> models::BlockedParentalCategoryQueriesStatsList get_blocked_parental_category_stats(time_from_millis, time_to_millis, dns_servers, devices, countries)
Gets statistics for blocked parental control categories

Returns DNS query statistics for requests blocked by parental control categories. Use the time range and filters to narrow the results. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**time_from_millis** | **i64** | Time from in milliseconds (inclusive) | [required] |
**time_to_millis** | **i64** | Time to in milliseconds (inclusive) | [required] |
**dns_servers** | Option<[**Vec<String>**](String.md)> | Filter by DNS servers |  |
**devices** | Option<[**Vec<String>**](String.md)> | Filter by devices |  |
**countries** | Option<[**Vec<String>**](String.md)> | Filter by countries |  |

### Return type

[**models::BlockedParentalCategoryQueriesStatsList**](BlockedParentalCategoryQueriesStatsList.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_categories_queries_stats

> models::CategoryQueriesStatsList get_categories_queries_stats(time_from_millis, time_to_millis, dns_servers, devices, countries)
Gets categories statistics

Returns DNS query statistics grouped by filtering category for the specified period. Use the time range and filters to narrow the results. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**time_from_millis** | **i64** | Time from in milliseconds (inclusive) | [required] |
**time_to_millis** | **i64** | Time to in milliseconds (inclusive) | [required] |
**dns_servers** | Option<[**Vec<String>**](String.md)> | Filter by DNS servers |  |
**devices** | Option<[**Vec<String>**](String.md)> | Filter by devices |  |
**countries** | Option<[**Vec<String>**](String.md)> | Filter by countries |  |

### Return type

[**models::CategoryQueriesStatsList**](CategoryQueriesStatsList.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_companies_stats

> models::CompanyQueriesStatsList get_companies_stats(time_from_millis, time_to_millis, dns_servers, devices, countries, cursor, limit)
Gets companies statistics

Returns DNS query statistics grouped by company for the specified period. Response is paginated, items are arranged by query count. For the initial request a default limit is applied if not specified. For the subsequent requests cursor must be provided (limit can be omitted). Filtering parameters, if specified for the initial request, must be provided on each page request as well. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**time_from_millis** | **i64** | Time from in milliseconds (inclusive) | [required] |
**time_to_millis** | **i64** | Time to in milliseconds (inclusive) | [required] |
**dns_servers** | Option<[**Vec<String>**](String.md)> | Filter by DNS servers |  |
**devices** | Option<[**Vec<String>**](String.md)> | Filter by devices |  |
**countries** | Option<[**Vec<String>**](String.md)> | Filter by countries |  |
**cursor** | Option<**String**> | Pagination cursor |  |
**limit** | Option<**i32**> | Pagination limit (may be overridden by cursor) |  |[default to 10]

### Return type

[**models::CompanyQueriesStatsList**](CompanyQueriesStatsList.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_countries_queries_stats

> models::CountryQueriesStatsList get_countries_queries_stats(time_from_millis, time_to_millis, dns_servers, devices, countries, cursor, limit)
Gets countries statistics

Returns DNS query statistics grouped by country for the specified period. Response is paginated, items are arranged by query count. For the initial request a default limit is applied if not specified. For the subsequent requests cursor must be provided (limit can be omitted). Filtering parameters, if specified for the initial request, must be provided on each page request as well. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**time_from_millis** | **i64** | Time from in milliseconds (inclusive) | [required] |
**time_to_millis** | **i64** | Time to in milliseconds (inclusive) | [required] |
**dns_servers** | Option<[**Vec<String>**](String.md)> | Filter by DNS servers |  |
**devices** | Option<[**Vec<String>**](String.md)> | Filter by devices |  |
**countries** | Option<[**Vec<String>**](String.md)> | Filter by countries |  |
**cursor** | Option<**String**> | Pagination cursor |  |
**limit** | Option<**i32**> | Pagination limit (may be overridden by cursor) |  |[default to 10]

### Return type

[**models::CountryQueriesStatsList**](CountryQueriesStatsList.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_detailed_companies_stats

> models::CompanyDetailedQueriesStatsList get_detailed_companies_stats(time_from_millis, time_to_millis, dns_servers, devices, countries, cursor, limit)
Gets detailed companies statistics

Returns detailed DNS query statistics grouped by company for the specified period. Response is paginated, items are arranged by query count. For the initial request a default limit is applied if not specified. For the subsequent requests cursor must be provided (limit can be omitted). Filtering parameters, if specified for the initial request, must be provided on each page request as well. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**time_from_millis** | **i64** | Time from in milliseconds (inclusive) | [required] |
**time_to_millis** | **i64** | Time to in milliseconds (inclusive) | [required] |
**dns_servers** | Option<[**Vec<String>**](String.md)> | Filter by DNS servers |  |
**devices** | Option<[**Vec<String>**](String.md)> | Filter by devices |  |
**countries** | Option<[**Vec<String>**](String.md)> | Filter by countries |  |
**cursor** | Option<**String**> | Pagination cursor |  |
**limit** | Option<**i32**> | Pagination limit (may be overridden by cursor) |  |[default to 10]

### Return type

[**models::CompanyDetailedQueriesStatsList**](CompanyDetailedQueriesStatsList.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_devices_queries_stats

> models::DeviceQueriesStatsList get_devices_queries_stats(time_from_millis, time_to_millis, dns_servers, devices, countries, cursor, limit)
Gets devices statistics

Returns DNS query statistics grouped by device for the specified period. Response is paginated, items are arranged by query count. For the initial request a default limit is applied if not specified. For the subsequent requests cursor must be provided (limit can be omitted). Filtering parameters, if specified for the initial request, must be provided on each page request as well. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**time_from_millis** | **i64** | Time from in milliseconds (inclusive) | [required] |
**time_to_millis** | **i64** | Time to in milliseconds (inclusive) | [required] |
**dns_servers** | Option<[**Vec<String>**](String.md)> | Filter by DNS servers |  |
**devices** | Option<[**Vec<String>**](String.md)> | Filter by devices |  |
**countries** | Option<[**Vec<String>**](String.md)> | Filter by countries |  |
**cursor** | Option<**String**> | Pagination cursor |  |
**limit** | Option<**i32**> | Pagination limit (may be overridden by cursor) |  |[default to 10]

### Return type

[**models::DeviceQueriesStatsList**](DeviceQueriesStatsList.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_domains_queries_stats

> models::DomainQueriesStatsList get_domains_queries_stats(time_from_millis, time_to_millis, dns_servers, devices, countries, cursor, limit)
Gets domains statistics

Returns DNS query statistics grouped by domain for the specified period. Response is paginated, items are arranged by query count. For the initial request a default limit is applied if not specified. For the subsequent requests cursor must be provided (limit can be omitted). Filtering parameters, if specified for the initial request, must be provided on each page request as well. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**time_from_millis** | **i64** | Time from in milliseconds (inclusive) | [required] |
**time_to_millis** | **i64** | Time to in milliseconds (inclusive) | [required] |
**dns_servers** | Option<[**Vec<String>**](String.md)> | Filter by DNS servers |  |
**devices** | Option<[**Vec<String>**](String.md)> | Filter by devices |  |
**countries** | Option<[**Vec<String>**](String.md)> | Filter by countries |  |
**cursor** | Option<**String**> | Pagination cursor |  |
**limit** | Option<**i32**> | Pagination limit (may be overridden by cursor) |  |[default to 10]

### Return type

[**models::DomainQueriesStatsList**](DomainQueriesStatsList.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_time_queries_stats

> models::TimeQueriesStatsList get_time_queries_stats(time_from_millis, time_to_millis, dns_servers, devices, countries)
Gets time statistics

Returns time-based DNS query statistics for the specified period. Use the time range parameters to define the period and filters to narrow the results. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**time_from_millis** | **i64** | Time from in milliseconds (inclusive) | [required] |
**time_to_millis** | **i64** | Time to in milliseconds (inclusive) | [required] |
**dns_servers** | Option<[**Vec<String>**](String.md)> | Filter by DNS servers |  |
**devices** | Option<[**Vec<String>**](String.md)> | Filter by devices |  |
**countries** | Option<[**Vec<String>**](String.md)> | Filter by countries |  |

### Return type

[**models::TimeQueriesStatsList**](TimeQueriesStatsList.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

