# AdGuard.ApiClient.Api.StatisticsApi

All URIs are relative to *https://api.adguard-dns.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetBlockedParentalCategoryStats**](StatisticsApi.md#getblockedparentalcategorystats) | **GET** /oapi/v1/stats/blocked_parental_categories | Gets statistics for blocked parental control categories |
| [**GetCategoriesQueriesStats**](StatisticsApi.md#getcategoriesqueriesstats) | **GET** /oapi/v1/stats/categories | Gets categories statistics |
| [**GetCompaniesStats**](StatisticsApi.md#getcompaniesstats) | **GET** /oapi/v1/stats/companies | Gets companies statistics |
| [**GetCountriesQueriesStats**](StatisticsApi.md#getcountriesqueriesstats) | **GET** /oapi/v1/stats/countries | Gets countries statistics |
| [**GetDetailedCompaniesStats**](StatisticsApi.md#getdetailedcompaniesstats) | **GET** /oapi/v1/stats/companies/detailed | Gets detailed companies statistics |
| [**GetDevicesQueriesStats**](StatisticsApi.md#getdevicesqueriesstats) | **GET** /oapi/v1/stats/devices | Gets devices statistics |
| [**GetDomainsQueriesStats**](StatisticsApi.md#getdomainsqueriesstats) | **GET** /oapi/v1/stats/domains | Gets domains statistics |
| [**GetTimeQueriesStats**](StatisticsApi.md#gettimequeriesstats) | **GET** /oapi/v1/stats/time | Gets time statistics |

<a id="getblockedparentalcategorystats"></a>
# **GetBlockedParentalCategoryStats**
> BlockedParentalCategoryQueriesStatsList GetBlockedParentalCategoryStats (long timeFromMillis, long timeToMillis, List<string>? dnsServers = null, List<string>? devices = null, List<string>? countries = null)

Gets statistics for blocked parental control categories

Returns DNS query statistics for requests blocked by parental control categories. Use the time range and filters to narrow the results. 

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using AdGuard.ApiClient.Api;
using AdGuard.ApiClient.Client;
using AdGuard.ApiClient.Model;

namespace Example
{
    public class GetBlockedParentalCategoryStatsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.adguard-dns.io";
            // Configure API key authorization: ApiKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: AuthToken
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new StatisticsApi(httpClient, config, httpClientHandler);
            var timeFromMillis = 789L;  // long | Time from in milliseconds (inclusive)
            var timeToMillis = 789L;  // long | Time to in milliseconds (inclusive)
            var dnsServers = new List<string>?(); // List<string>? | Filter by DNS servers (optional) 
            var devices = new List<string>?(); // List<string>? | Filter by devices (optional) 
            var countries = new List<string>?(); // List<string>? | Filter by countries (optional) 

            try
            {
                // Gets statistics for blocked parental control categories
                BlockedParentalCategoryQueriesStatsList result = apiInstance.GetBlockedParentalCategoryStats(timeFromMillis, timeToMillis, dnsServers, devices, countries);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling StatisticsApi.GetBlockedParentalCategoryStats: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetBlockedParentalCategoryStatsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Gets statistics for blocked parental control categories
    ApiResponse<BlockedParentalCategoryQueriesStatsList> response = apiInstance.GetBlockedParentalCategoryStatsWithHttpInfo(timeFromMillis, timeToMillis, dnsServers, devices, countries);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling StatisticsApi.GetBlockedParentalCategoryStatsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **timeFromMillis** | **long** | Time from in milliseconds (inclusive) |  |
| **timeToMillis** | **long** | Time to in milliseconds (inclusive) |  |
| **dnsServers** | [**List&lt;string&gt;?**](string.md) | Filter by DNS servers | [optional]  |
| **devices** | [**List&lt;string&gt;?**](string.md) | Filter by devices | [optional]  |
| **countries** | [**List&lt;string&gt;?**](string.md) | Filter by countries | [optional]  |

### Return type

[**BlockedParentalCategoryQueriesStatsList**](BlockedParentalCategoryQueriesStatsList.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns blocked parental control categories statistics |  -  |
| **400** | Validation failed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getcategoriesqueriesstats"></a>
# **GetCategoriesQueriesStats**
> CategoryQueriesStatsList GetCategoriesQueriesStats (long timeFromMillis, long timeToMillis, List<string>? dnsServers = null, List<string>? devices = null, List<string>? countries = null)

Gets categories statistics

Returns DNS query statistics grouped by filtering category for the specified period. Use the time range and filters to narrow the results. 

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using AdGuard.ApiClient.Api;
using AdGuard.ApiClient.Client;
using AdGuard.ApiClient.Model;

namespace Example
{
    public class GetCategoriesQueriesStatsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.adguard-dns.io";
            // Configure API key authorization: ApiKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: AuthToken
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new StatisticsApi(httpClient, config, httpClientHandler);
            var timeFromMillis = 789L;  // long | Time from in milliseconds (inclusive)
            var timeToMillis = 789L;  // long | Time to in milliseconds (inclusive)
            var dnsServers = new List<string>?(); // List<string>? | Filter by DNS servers (optional) 
            var devices = new List<string>?(); // List<string>? | Filter by devices (optional) 
            var countries = new List<string>?(); // List<string>? | Filter by countries (optional) 

            try
            {
                // Gets categories statistics
                CategoryQueriesStatsList result = apiInstance.GetCategoriesQueriesStats(timeFromMillis, timeToMillis, dnsServers, devices, countries);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling StatisticsApi.GetCategoriesQueriesStats: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetCategoriesQueriesStatsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Gets categories statistics
    ApiResponse<CategoryQueriesStatsList> response = apiInstance.GetCategoriesQueriesStatsWithHttpInfo(timeFromMillis, timeToMillis, dnsServers, devices, countries);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling StatisticsApi.GetCategoriesQueriesStatsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **timeFromMillis** | **long** | Time from in milliseconds (inclusive) |  |
| **timeToMillis** | **long** | Time to in milliseconds (inclusive) |  |
| **dnsServers** | [**List&lt;string&gt;?**](string.md) | Filter by DNS servers | [optional]  |
| **devices** | [**List&lt;string&gt;?**](string.md) | Filter by devices | [optional]  |
| **countries** | [**List&lt;string&gt;?**](string.md) | Filter by countries | [optional]  |

### Return type

[**CategoryQueriesStatsList**](CategoryQueriesStatsList.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns categories statistics |  -  |
| **400** | Validation failed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getcompaniesstats"></a>
# **GetCompaniesStats**
> CompanyQueriesStatsList GetCompaniesStats (long timeFromMillis, long timeToMillis, List<string>? dnsServers = null, List<string>? devices = null, List<string>? countries = null, string? cursor = null, int? limit = null)

Gets companies statistics

Returns DNS query statistics grouped by company for the specified period. Response is paginated, items are arranged by query count. For the initial request a default limit is applied if not specified. For the subsequent requests cursor must be provided (limit can be omitted). Filtering parameters, if specified for the initial request, must be provided on each page request as well. 

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using AdGuard.ApiClient.Api;
using AdGuard.ApiClient.Client;
using AdGuard.ApiClient.Model;

namespace Example
{
    public class GetCompaniesStatsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.adguard-dns.io";
            // Configure API key authorization: ApiKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: AuthToken
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new StatisticsApi(httpClient, config, httpClientHandler);
            var timeFromMillis = 789L;  // long | Time from in milliseconds (inclusive)
            var timeToMillis = 789L;  // long | Time to in milliseconds (inclusive)
            var dnsServers = new List<string>?(); // List<string>? | Filter by DNS servers (optional) 
            var devices = new List<string>?(); // List<string>? | Filter by devices (optional) 
            var countries = new List<string>?(); // List<string>? | Filter by countries (optional) 
            var cursor = "cursor_example";  // string? | Pagination cursor (optional) 
            var limit = 10;  // int? | Pagination limit (may be overridden by cursor) (optional)  (default to 10)

            try
            {
                // Gets companies statistics
                CompanyQueriesStatsList result = apiInstance.GetCompaniesStats(timeFromMillis, timeToMillis, dnsServers, devices, countries, cursor, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling StatisticsApi.GetCompaniesStats: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetCompaniesStatsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Gets companies statistics
    ApiResponse<CompanyQueriesStatsList> response = apiInstance.GetCompaniesStatsWithHttpInfo(timeFromMillis, timeToMillis, dnsServers, devices, countries, cursor, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling StatisticsApi.GetCompaniesStatsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **timeFromMillis** | **long** | Time from in milliseconds (inclusive) |  |
| **timeToMillis** | **long** | Time to in milliseconds (inclusive) |  |
| **dnsServers** | [**List&lt;string&gt;?**](string.md) | Filter by DNS servers | [optional]  |
| **devices** | [**List&lt;string&gt;?**](string.md) | Filter by devices | [optional]  |
| **countries** | [**List&lt;string&gt;?**](string.md) | Filter by countries | [optional]  |
| **cursor** | **string?** | Pagination cursor | [optional]  |
| **limit** | **int?** | Pagination limit (may be overridden by cursor) | [optional] [default to 10] |

### Return type

[**CompanyQueriesStatsList**](CompanyQueriesStatsList.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns companies statistics |  -  |
| **400** | Validation failed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getcountriesqueriesstats"></a>
# **GetCountriesQueriesStats**
> CountryQueriesStatsList GetCountriesQueriesStats (long timeFromMillis, long timeToMillis, List<string>? dnsServers = null, List<string>? devices = null, List<string>? countries = null, string? cursor = null, int? limit = null)

Gets countries statistics

Returns DNS query statistics grouped by country for the specified period. Response is paginated, items are arranged by query count. For the initial request a default limit is applied if not specified. For the subsequent requests cursor must be provided (limit can be omitted). Filtering parameters, if specified for the initial request, must be provided on each page request as well. 

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using AdGuard.ApiClient.Api;
using AdGuard.ApiClient.Client;
using AdGuard.ApiClient.Model;

namespace Example
{
    public class GetCountriesQueriesStatsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.adguard-dns.io";
            // Configure API key authorization: ApiKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: AuthToken
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new StatisticsApi(httpClient, config, httpClientHandler);
            var timeFromMillis = 789L;  // long | Time from in milliseconds (inclusive)
            var timeToMillis = 789L;  // long | Time to in milliseconds (inclusive)
            var dnsServers = new List<string>?(); // List<string>? | Filter by DNS servers (optional) 
            var devices = new List<string>?(); // List<string>? | Filter by devices (optional) 
            var countries = new List<string>?(); // List<string>? | Filter by countries (optional) 
            var cursor = "cursor_example";  // string? | Pagination cursor (optional) 
            var limit = 10;  // int? | Pagination limit (may be overridden by cursor) (optional)  (default to 10)

            try
            {
                // Gets countries statistics
                CountryQueriesStatsList result = apiInstance.GetCountriesQueriesStats(timeFromMillis, timeToMillis, dnsServers, devices, countries, cursor, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling StatisticsApi.GetCountriesQueriesStats: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetCountriesQueriesStatsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Gets countries statistics
    ApiResponse<CountryQueriesStatsList> response = apiInstance.GetCountriesQueriesStatsWithHttpInfo(timeFromMillis, timeToMillis, dnsServers, devices, countries, cursor, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling StatisticsApi.GetCountriesQueriesStatsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **timeFromMillis** | **long** | Time from in milliseconds (inclusive) |  |
| **timeToMillis** | **long** | Time to in milliseconds (inclusive) |  |
| **dnsServers** | [**List&lt;string&gt;?**](string.md) | Filter by DNS servers | [optional]  |
| **devices** | [**List&lt;string&gt;?**](string.md) | Filter by devices | [optional]  |
| **countries** | [**List&lt;string&gt;?**](string.md) | Filter by countries | [optional]  |
| **cursor** | **string?** | Pagination cursor | [optional]  |
| **limit** | **int?** | Pagination limit (may be overridden by cursor) | [optional] [default to 10] |

### Return type

[**CountryQueriesStatsList**](CountryQueriesStatsList.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns countries statistics |  -  |
| **400** | Validation failed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getdetailedcompaniesstats"></a>
# **GetDetailedCompaniesStats**
> CompanyDetailedQueriesStatsList GetDetailedCompaniesStats (long timeFromMillis, long timeToMillis, List<string>? dnsServers = null, List<string>? devices = null, List<string>? countries = null, string? cursor = null, int? limit = null)

Gets detailed companies statistics

Returns detailed DNS query statistics grouped by company for the specified period. Response is paginated, items are arranged by query count. For the initial request a default limit is applied if not specified. For the subsequent requests cursor must be provided (limit can be omitted). Filtering parameters, if specified for the initial request, must be provided on each page request as well. 

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using AdGuard.ApiClient.Api;
using AdGuard.ApiClient.Client;
using AdGuard.ApiClient.Model;

namespace Example
{
    public class GetDetailedCompaniesStatsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.adguard-dns.io";
            // Configure API key authorization: ApiKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: AuthToken
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new StatisticsApi(httpClient, config, httpClientHandler);
            var timeFromMillis = 789L;  // long | Time from in milliseconds (inclusive)
            var timeToMillis = 789L;  // long | Time to in milliseconds (inclusive)
            var dnsServers = new List<string>?(); // List<string>? | Filter by DNS servers (optional) 
            var devices = new List<string>?(); // List<string>? | Filter by devices (optional) 
            var countries = new List<string>?(); // List<string>? | Filter by countries (optional) 
            var cursor = "cursor_example";  // string? | Pagination cursor (optional) 
            var limit = 10;  // int? | Pagination limit (may be overridden by cursor) (optional)  (default to 10)

            try
            {
                // Gets detailed companies statistics
                CompanyDetailedQueriesStatsList result = apiInstance.GetDetailedCompaniesStats(timeFromMillis, timeToMillis, dnsServers, devices, countries, cursor, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling StatisticsApi.GetDetailedCompaniesStats: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetDetailedCompaniesStatsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Gets detailed companies statistics
    ApiResponse<CompanyDetailedQueriesStatsList> response = apiInstance.GetDetailedCompaniesStatsWithHttpInfo(timeFromMillis, timeToMillis, dnsServers, devices, countries, cursor, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling StatisticsApi.GetDetailedCompaniesStatsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **timeFromMillis** | **long** | Time from in milliseconds (inclusive) |  |
| **timeToMillis** | **long** | Time to in milliseconds (inclusive) |  |
| **dnsServers** | [**List&lt;string&gt;?**](string.md) | Filter by DNS servers | [optional]  |
| **devices** | [**List&lt;string&gt;?**](string.md) | Filter by devices | [optional]  |
| **countries** | [**List&lt;string&gt;?**](string.md) | Filter by countries | [optional]  |
| **cursor** | **string?** | Pagination cursor | [optional]  |
| **limit** | **int?** | Pagination limit (may be overridden by cursor) | [optional] [default to 10] |

### Return type

[**CompanyDetailedQueriesStatsList**](CompanyDetailedQueriesStatsList.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns detailed companies statistics |  -  |
| **400** | Validation failed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getdevicesqueriesstats"></a>
# **GetDevicesQueriesStats**
> DeviceQueriesStatsList GetDevicesQueriesStats (long timeFromMillis, long timeToMillis, List<string>? dnsServers = null, List<string>? devices = null, List<string>? countries = null, string? cursor = null, int? limit = null)

Gets devices statistics

Returns DNS query statistics grouped by device for the specified period. Response is paginated, items are arranged by query count. For the initial request a default limit is applied if not specified. For the subsequent requests cursor must be provided (limit can be omitted). Filtering parameters, if specified for the initial request, must be provided on each page request as well. 

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using AdGuard.ApiClient.Api;
using AdGuard.ApiClient.Client;
using AdGuard.ApiClient.Model;

namespace Example
{
    public class GetDevicesQueriesStatsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.adguard-dns.io";
            // Configure API key authorization: ApiKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: AuthToken
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new StatisticsApi(httpClient, config, httpClientHandler);
            var timeFromMillis = 789L;  // long | Time from in milliseconds (inclusive)
            var timeToMillis = 789L;  // long | Time to in milliseconds (inclusive)
            var dnsServers = new List<string>?(); // List<string>? | Filter by DNS servers (optional) 
            var devices = new List<string>?(); // List<string>? | Filter by devices (optional) 
            var countries = new List<string>?(); // List<string>? | Filter by countries (optional) 
            var cursor = "cursor_example";  // string? | Pagination cursor (optional) 
            var limit = 10;  // int? | Pagination limit (may be overridden by cursor) (optional)  (default to 10)

            try
            {
                // Gets devices statistics
                DeviceQueriesStatsList result = apiInstance.GetDevicesQueriesStats(timeFromMillis, timeToMillis, dnsServers, devices, countries, cursor, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling StatisticsApi.GetDevicesQueriesStats: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetDevicesQueriesStatsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Gets devices statistics
    ApiResponse<DeviceQueriesStatsList> response = apiInstance.GetDevicesQueriesStatsWithHttpInfo(timeFromMillis, timeToMillis, dnsServers, devices, countries, cursor, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling StatisticsApi.GetDevicesQueriesStatsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **timeFromMillis** | **long** | Time from in milliseconds (inclusive) |  |
| **timeToMillis** | **long** | Time to in milliseconds (inclusive) |  |
| **dnsServers** | [**List&lt;string&gt;?**](string.md) | Filter by DNS servers | [optional]  |
| **devices** | [**List&lt;string&gt;?**](string.md) | Filter by devices | [optional]  |
| **countries** | [**List&lt;string&gt;?**](string.md) | Filter by countries | [optional]  |
| **cursor** | **string?** | Pagination cursor | [optional]  |
| **limit** | **int?** | Pagination limit (may be overridden by cursor) | [optional] [default to 10] |

### Return type

[**DeviceQueriesStatsList**](DeviceQueriesStatsList.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns devices statistics |  -  |
| **400** | Validation failed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getdomainsqueriesstats"></a>
# **GetDomainsQueriesStats**
> DomainQueriesStatsList GetDomainsQueriesStats (long timeFromMillis, long timeToMillis, List<string>? dnsServers = null, List<string>? devices = null, List<string>? countries = null, string? cursor = null, int? limit = null)

Gets domains statistics

Returns DNS query statistics grouped by domain for the specified period. Response is paginated, items are arranged by query count. For the initial request a default limit is applied if not specified. For the subsequent requests cursor must be provided (limit can be omitted). Filtering parameters, if specified for the initial request, must be provided on each page request as well. 

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using AdGuard.ApiClient.Api;
using AdGuard.ApiClient.Client;
using AdGuard.ApiClient.Model;

namespace Example
{
    public class GetDomainsQueriesStatsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.adguard-dns.io";
            // Configure API key authorization: ApiKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: AuthToken
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new StatisticsApi(httpClient, config, httpClientHandler);
            var timeFromMillis = 789L;  // long | Time from in milliseconds (inclusive)
            var timeToMillis = 789L;  // long | Time to in milliseconds (inclusive)
            var dnsServers = new List<string>?(); // List<string>? | Filter by DNS servers (optional) 
            var devices = new List<string>?(); // List<string>? | Filter by devices (optional) 
            var countries = new List<string>?(); // List<string>? | Filter by countries (optional) 
            var cursor = "cursor_example";  // string? | Pagination cursor (optional) 
            var limit = 10;  // int? | Pagination limit (may be overridden by cursor) (optional)  (default to 10)

            try
            {
                // Gets domains statistics
                DomainQueriesStatsList result = apiInstance.GetDomainsQueriesStats(timeFromMillis, timeToMillis, dnsServers, devices, countries, cursor, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling StatisticsApi.GetDomainsQueriesStats: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetDomainsQueriesStatsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Gets domains statistics
    ApiResponse<DomainQueriesStatsList> response = apiInstance.GetDomainsQueriesStatsWithHttpInfo(timeFromMillis, timeToMillis, dnsServers, devices, countries, cursor, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling StatisticsApi.GetDomainsQueriesStatsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **timeFromMillis** | **long** | Time from in milliseconds (inclusive) |  |
| **timeToMillis** | **long** | Time to in milliseconds (inclusive) |  |
| **dnsServers** | [**List&lt;string&gt;?**](string.md) | Filter by DNS servers | [optional]  |
| **devices** | [**List&lt;string&gt;?**](string.md) | Filter by devices | [optional]  |
| **countries** | [**List&lt;string&gt;?**](string.md) | Filter by countries | [optional]  |
| **cursor** | **string?** | Pagination cursor | [optional]  |
| **limit** | **int?** | Pagination limit (may be overridden by cursor) | [optional] [default to 10] |

### Return type

[**DomainQueriesStatsList**](DomainQueriesStatsList.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns domains statistics |  -  |
| **400** | Validation failed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="gettimequeriesstats"></a>
# **GetTimeQueriesStats**
> TimeQueriesStatsList GetTimeQueriesStats (long timeFromMillis, long timeToMillis, List<string>? dnsServers = null, List<string>? devices = null, List<string>? countries = null)

Gets time statistics

Returns time-based DNS query statistics for the specified period. Use the time range parameters to define the period and filters to narrow the results. 

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using AdGuard.ApiClient.Api;
using AdGuard.ApiClient.Client;
using AdGuard.ApiClient.Model;

namespace Example
{
    public class GetTimeQueriesStatsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.adguard-dns.io";
            // Configure API key authorization: ApiKey
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");
            // Configure Bearer token for authorization: AuthToken
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new StatisticsApi(httpClient, config, httpClientHandler);
            var timeFromMillis = 789L;  // long | Time from in milliseconds (inclusive)
            var timeToMillis = 789L;  // long | Time to in milliseconds (inclusive)
            var dnsServers = new List<string>?(); // List<string>? | Filter by DNS servers (optional) 
            var devices = new List<string>?(); // List<string>? | Filter by devices (optional) 
            var countries = new List<string>?(); // List<string>? | Filter by countries (optional) 

            try
            {
                // Gets time statistics
                TimeQueriesStatsList result = apiInstance.GetTimeQueriesStats(timeFromMillis, timeToMillis, dnsServers, devices, countries);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling StatisticsApi.GetTimeQueriesStats: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetTimeQueriesStatsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Gets time statistics
    ApiResponse<TimeQueriesStatsList> response = apiInstance.GetTimeQueriesStatsWithHttpInfo(timeFromMillis, timeToMillis, dnsServers, devices, countries);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling StatisticsApi.GetTimeQueriesStatsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **timeFromMillis** | **long** | Time from in milliseconds (inclusive) |  |
| **timeToMillis** | **long** | Time to in milliseconds (inclusive) |  |
| **dnsServers** | [**List&lt;string&gt;?**](string.md) | Filter by DNS servers | [optional]  |
| **devices** | [**List&lt;string&gt;?**](string.md) | Filter by devices | [optional]  |
| **countries** | [**List&lt;string&gt;?**](string.md) | Filter by countries | [optional]  |

### Return type

[**TimeQueriesStatsList**](TimeQueriesStatsList.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns time statistics |  -  |
| **400** | Validation failed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

