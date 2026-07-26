# AdGuard.ApiClient.Api.DNSServersApi

All URIs are relative to *https://api.adguard-dns.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**CreateDNSServer**](DNSServersApi.md#creatednsserver) | **POST** /oapi/v1/dns_servers | Creates a new DNS server |
| [**GetDNSServer**](DNSServersApi.md#getdnsserver) | **GET** /oapi/v1/dns_servers/{dns_server_id} | Gets a DNS server by ID |
| [**GetDNSServerSettings**](DNSServersApi.md#getdnsserversettings) | **GET** /oapi/v1/dns_servers/{dns_server_id}/settings | Gets DNS server settings |
| [**GetDnsServers**](DNSServersApi.md#getdnsservers) | **GET** /oapi/v2/dns_servers | Lists DNS servers |
| [**ListDNSServers**](DNSServersApi.md#listdnsservers) | **GET** /oapi/v1/dns_servers | Lists DNS servers |
| [**RemoveDNSServer**](DNSServersApi.md#removednsserver) | **DELETE** /oapi/v1/dns_servers/{dns_server_id} | Removes a DNS server |
| [**UpdateDNSServer**](DNSServersApi.md#updatednsserver) | **PUT** /oapi/v1/dns_servers/{dns_server_id} | Updates a DNS server |
| [**UpdateDNSServerSettings**](DNSServersApi.md#updatednsserversettings) | **PUT** /oapi/v1/dns_servers/{dns_server_id}/settings | Updates DNS server settings |

<a id="creatednsserver"></a>
# **CreateDNSServer**
> DNSServer CreateDNSServer (DNSServerCreate dNSServerCreate)

Creates a new DNS server

Creates a new DNS server. You can attach custom settings via the request body; otherwise the server will be created with default settings. 

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
    public class CreateDNSServerExample
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
            var apiInstance = new DNSServersApi(httpClient, config, httpClientHandler);
            var dNSServerCreate = new DNSServerCreate(); // DNSServerCreate | 

            try
            {
                // Creates a new DNS server
                DNSServer result = apiInstance.CreateDNSServer(dNSServerCreate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DNSServersApi.CreateDNSServer: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CreateDNSServerWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Creates a new DNS server
    ApiResponse<DNSServer> response = apiInstance.CreateDNSServerWithHttpInfo(dNSServerCreate);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DNSServersApi.CreateDNSServerWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **dNSServerCreate** | [**DNSServerCreate**](DNSServerCreate.md) |  |  |

### Return type

[**DNSServer**](DNSServer.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | DNS server created |  -  |
| **400** | Validation failed |  -  |
| **429** | DNS servers count reached the limit |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getdnsserver"></a>
# **GetDNSServer**
> DNSServer GetDNSServer (string dnsServerId)

Gets a DNS server by ID

Returns details of a specific DNS server. Use this endpoint to retrieve DNS server configuration including its linked devices. 

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
    public class GetDNSServerExample
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
            var apiInstance = new DNSServersApi(httpClient, config, httpClientHandler);
            var dnsServerId = "dnsServerId_example";  // string | 

            try
            {
                // Gets a DNS server by ID
                DNSServer result = apiInstance.GetDNSServer(dnsServerId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DNSServersApi.GetDNSServer: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetDNSServerWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Gets a DNS server by ID
    ApiResponse<DNSServer> response = apiInstance.GetDNSServerWithHttpInfo(dnsServerId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DNSServersApi.GetDNSServerWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **dnsServerId** | **string** |  |  |

### Return type

[**DNSServer**](DNSServer.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns DNS server details |  -  |
| **404** | DNS server not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getdnsserversettings"></a>
# **GetDNSServerSettings**
> DNSServerSettings GetDNSServerSettings (string dnsServerId)

Gets DNS server settings

Returns the current settings of a DNS server, including filtering, parental control, and access configuration. Use this endpoint to review the current configuration before making changes. 

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
    public class GetDNSServerSettingsExample
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
            var apiInstance = new DNSServersApi(httpClient, config, httpClientHandler);
            var dnsServerId = "dnsServerId_example";  // string | 

            try
            {
                // Gets DNS server settings
                DNSServerSettings result = apiInstance.GetDNSServerSettings(dnsServerId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DNSServersApi.GetDNSServerSettings: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetDNSServerSettingsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Gets DNS server settings
    ApiResponse<DNSServerSettings> response = apiInstance.GetDNSServerSettingsWithHttpInfo(dnsServerId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DNSServersApi.GetDNSServerSettingsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **dnsServerId** | **string** |  |  |

### Return type

[**DNSServerSettings**](DNSServerSettings.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns DNS server settings |  -  |
| **404** | DNS server not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getdnsservers"></a>
# **GetDnsServers**
> DnsServersResponse GetDnsServers (string? cursor = null, int? limit = null, List<string>? dnsServers = null, string? search = null)

Lists DNS servers

Lists DNS servers according to the specified parameters. By default there is at least one default server. Response is paginated, items are arranged in the newest-first order. For the initial request a default limit is applied if not specified. For the subsequent requests cursor must be provided (limit can be omitted). Filtering parameters, if specified for the initial request, must be provided on each page request as well. 

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
    public class GetDnsServersExample
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
            var apiInstance = new DNSServersApi(httpClient, config, httpClientHandler);
            var cursor = "cursor_example";  // string? | Pagination cursor (optional) 
            var limit = 10;  // int? | Pagination limit (may be overridden by cursor) (optional)  (default to 10)
            var dnsServers = new List<string>?(); // List<string>? | Filter by DNS servers (optional) 
            var search = "search_example";  // string? | Search by DNS server name or ID (optional) 

            try
            {
                // Lists DNS servers
                DnsServersResponse result = apiInstance.GetDnsServers(cursor, limit, dnsServers, search);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DNSServersApi.GetDnsServers: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetDnsServersWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Lists DNS servers
    ApiResponse<DnsServersResponse> response = apiInstance.GetDnsServersWithHttpInfo(cursor, limit, dnsServers, search);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DNSServersApi.GetDnsServersWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **cursor** | **string?** | Pagination cursor | [optional]  |
| **limit** | **int?** | Pagination limit (may be overridden by cursor) | [optional] [default to 10] |
| **dnsServers** | [**List&lt;string&gt;?**](string.md) | Filter by DNS servers | [optional]  |
| **search** | **string?** | Search by DNS server name or ID | [optional]  |

### Return type

[**DnsServersResponse**](DnsServersResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns list of DNS servers |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="listdnsservers"></a>
# **ListDNSServers**
> List&lt;DNSServer&gt; ListDNSServers ()

Lists DNS servers

Method is deprecated and scheduled for removal in January 2027. Use the /oapi/v2 version instead.

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
    public class ListDNSServersExample
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
            var apiInstance = new DNSServersApi(httpClient, config, httpClientHandler);

            try
            {
                // Lists DNS servers
                List<DNSServer> result = apiInstance.ListDNSServers();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DNSServersApi.ListDNSServers: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListDNSServersWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Lists DNS servers
    ApiResponse<List<DNSServer>> response = apiInstance.ListDNSServersWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DNSServersApi.ListDNSServersWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;DNSServer&gt;**](DNSServer.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns list of DNS servers |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="removednsserver"></a>
# **RemoveDNSServer**
> void RemoveDNSServer (string dnsServerId)

Removes a DNS server

Removes a DNS server. All devices attached to this DNS server will be moved to the default DNS server. Deleting the default DNS server is forbidden. 

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
    public class RemoveDNSServerExample
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
            var apiInstance = new DNSServersApi(httpClient, config, httpClientHandler);
            var dnsServerId = "dnsServerId_example";  // string | 

            try
            {
                // Removes a DNS server
                apiInstance.RemoveDNSServer(dnsServerId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DNSServersApi.RemoveDNSServer: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RemoveDNSServerWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Removes a DNS server
    apiInstance.RemoveDNSServerWithHttpInfo(dnsServerId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DNSServersApi.RemoveDNSServerWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **dnsServerId** | **string** |  |  |

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
| **200** | DNS server removed |  -  |
| **404** | DNS server not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="updatednsserver"></a>
# **UpdateDNSServer**
> void UpdateDNSServer (string dnsServerId, DNSServerUpdate dNSServerUpdate)

Updates a DNS server

Updates a DNS server with the provided fields. Only the specified fields will be modified. 

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
    public class UpdateDNSServerExample
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
            var apiInstance = new DNSServersApi(httpClient, config, httpClientHandler);
            var dnsServerId = "dnsServerId_example";  // string | 
            var dNSServerUpdate = new DNSServerUpdate(); // DNSServerUpdate | 

            try
            {
                // Updates a DNS server
                apiInstance.UpdateDNSServer(dnsServerId, dNSServerUpdate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DNSServersApi.UpdateDNSServer: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the UpdateDNSServerWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Updates a DNS server
    apiInstance.UpdateDNSServerWithHttpInfo(dnsServerId, dNSServerUpdate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DNSServersApi.UpdateDNSServerWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **dnsServerId** | **string** |  |  |
| **dNSServerUpdate** | [**DNSServerUpdate**](DNSServerUpdate.md) |  |  |

### Return type

void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | DNS server updated |  -  |
| **400** | Validation failed |  -  |
| **404** | DNS server not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="updatednsserversettings"></a>
# **UpdateDNSServerSettings**
> void UpdateDNSServerSettings (string dnsServerId, DNSServerSettingsUpdate dNSServerSettingsUpdate)

Updates DNS server settings

Updates the settings of a DNS server, such as filtering, parental control, and access configuration. Provide the settings to update in the request body. 

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
    public class UpdateDNSServerSettingsExample
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
            var apiInstance = new DNSServersApi(httpClient, config, httpClientHandler);
            var dnsServerId = "dnsServerId_example";  // string | 
            var dNSServerSettingsUpdate = new DNSServerSettingsUpdate(); // DNSServerSettingsUpdate | 

            try
            {
                // Updates DNS server settings
                apiInstance.UpdateDNSServerSettings(dnsServerId, dNSServerSettingsUpdate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DNSServersApi.UpdateDNSServerSettings: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the UpdateDNSServerSettingsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Updates DNS server settings
    apiInstance.UpdateDNSServerSettingsWithHttpInfo(dnsServerId, dNSServerSettingsUpdate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DNSServersApi.UpdateDNSServerSettingsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **dnsServerId** | **string** |  |  |
| **dNSServerSettingsUpdate** | [**DNSServerSettingsUpdate**](DNSServerSettingsUpdate.md) |  |  |

### Return type

void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | DNS server settings updated |  -  |
| **400** | Validation failed |  -  |
| **404** | DNS server not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

