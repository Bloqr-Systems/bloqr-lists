# AdGuard.ApiClient.Api.QueryLogApi

All URIs are relative to *https://api.adguard-dns.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ClearQueryLog**](QueryLogApi.md#clearquerylog) | **DELETE** /oapi/v1/query_log | Clears query log |
| [**GetQueryLog**](QueryLogApi.md#getquerylog) | **GET** /oapi/v1/query_log | Gets query log |

<a id="clearquerylog"></a>
# **ClearQueryLog**
> void ClearQueryLog ()

Clears query log

Clears all query log entries for the current account. Use this endpoint to remove stored DNS query records. 

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
    public class ClearQueryLogExample
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
            var apiInstance = new QueryLogApi(httpClient, config, httpClientHandler);

            try
            {
                // Clears query log
                apiInstance.ClearQueryLog();
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling QueryLogApi.ClearQueryLog: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ClearQueryLogWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Clears query log
    apiInstance.ClearQueryLogWithHttpInfo();
}
catch (ApiException e)
{
    Debug.Print("Exception when calling QueryLogApi.ClearQueryLogWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** | Query log cleared |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getquerylog"></a>
# **GetQueryLog**
> QueryLogResponse GetQueryLog (long timeFromMillis, long timeToMillis, List<string>? dnsServers = null, List<string>? devices = null, List<string>? countries = null, List<string>? companies = null, List<FilteringActionStatus>? statuses = null, List<CategoryType>? categories = null, string? search = null, int? limit = null, string? cursor = null)

Gets query log

Returns the query log for the specified time period. Use filters to narrow the result set and cursor to paginate through the results. The log contains DNS query records with filtering, device, and domain information. 

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
    public class GetQueryLogExample
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
            var apiInstance = new QueryLogApi(httpClient, config, httpClientHandler);
            var timeFromMillis = 789L;  // long | Time from in milliseconds (inclusive)
            var timeToMillis = 789L;  // long | Time to in milliseconds (inclusive)
            var dnsServers = new List<string>?(); // List<string>? | Filter by DNS servers (optional) 
            var devices = new List<string>?(); // List<string>? | Filter by devices (optional) 
            var countries = new List<string>?(); // List<string>? | Filter by countries (optional) 
            var companies = new List<string>?(); // List<string>? | Filter by companies (optional) 
            var statuses = new List<FilteringActionStatus>?(); // List<FilteringActionStatus>? | Filter by statuses (optional) 
            var categories = new List<CategoryType>?(); // List<CategoryType>? | Filter by categories (optional) 
            var search = "search_example";  // string? | Filter by domain name (optional) 
            var limit = 20;  // int? | Pagination limit (optional)  (default to 20)
            var cursor = "cursor_example";  // string? | Pagination cursor from previous response (optional) 

            try
            {
                // Gets query log
                QueryLogResponse result = apiInstance.GetQueryLog(timeFromMillis, timeToMillis, dnsServers, devices, countries, companies, statuses, categories, search, limit, cursor);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling QueryLogApi.GetQueryLog: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetQueryLogWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Gets query log
    ApiResponse<QueryLogResponse> response = apiInstance.GetQueryLogWithHttpInfo(timeFromMillis, timeToMillis, dnsServers, devices, countries, companies, statuses, categories, search, limit, cursor);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling QueryLogApi.GetQueryLogWithHttpInfo: " + e.Message);
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
| **companies** | [**List&lt;string&gt;?**](string.md) | Filter by companies | [optional]  |
| **statuses** | [**List&lt;FilteringActionStatus&gt;?**](FilteringActionStatus.md) | Filter by statuses | [optional]  |
| **categories** | [**List&lt;CategoryType&gt;?**](CategoryType.md) | Filter by categories | [optional]  |
| **search** | **string?** | Filter by domain name | [optional]  |
| **limit** | **int?** | Pagination limit | [optional] [default to 20] |
| **cursor** | **string?** | Pagination cursor from previous response | [optional]  |

### Return type

[**QueryLogResponse**](QueryLogResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns query log |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

