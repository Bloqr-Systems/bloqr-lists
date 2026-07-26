# AdGuard.ApiClient.Api.DevicesApi

All URIs are relative to *https://api.adguard-dns.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**CreateDevice**](DevicesApi.md#createdevice) | **POST** /oapi/v1/devices | Creates a new device |
| [**GetDevice**](DevicesApi.md#getdevice) | **GET** /oapi/v1/devices/{device_id} | Gets a device by ID |
| [**GetDeviceSettings**](DevicesApi.md#getdevicesettings) | **GET** /oapi/v1/devices/{device_id}/settings | Gets device settings |
| [**GetDevices**](DevicesApi.md#getdevices) | **GET** /oapi/v2/devices | Lists devices |
| [**GetDoHMobileConfig**](DevicesApi.md#getdohmobileconfig) | **GET** /oapi/v1/devices/{device_id}/doh.mobileconfig | Gets DNS-over-HTTPS .mobileconfig file |
| [**GetDoTMobileConfig**](DevicesApi.md#getdotmobileconfig) | **GET** /oapi/v1/devices/{device_id}/dot.mobileconfig | Gets DNS-over-TLS .mobileconfig file |
| [**LinkDedicatedIPv4Address**](DevicesApi.md#linkdedicatedipv4address) | **POST** /oapi/v1/devices/{device_id}/dedicated_addresses/ipv4 | Links dedicated IPv4 to the device |
| [**ListDedicatedAddressesForDevice**](DevicesApi.md#listdedicatedaddressesfordevice) | **GET** /oapi/v1/devices/{device_id}/dedicated_addresses | Lists dedicated IPv4 and IPv6 addresses for a device |
| [**ListDevices**](DevicesApi.md#listdevices) | **GET** /oapi/v1/devices | Lists devices |
| [**RemoveDevice**](DevicesApi.md#removedevice) | **DELETE** /oapi/v1/devices/{device_id} | Removes a device |
| [**ResetDOHPassword**](DevicesApi.md#resetdohpassword) | **PUT** /oapi/v1/devices/{device_id}/doh_password/reset | Resets DNS-over-HTTPS password |
| [**UnlinkDedicatedIPv4Address**](DevicesApi.md#unlinkdedicatedipv4address) | **DELETE** /oapi/v1/devices/{device_id}/dedicated_addresses/ipv4 | Unlinks dedicated IPv4 from the device |
| [**UpdateDevice**](DevicesApi.md#updatedevice) | **PUT** /oapi/v1/devices/{device_id} | Updates a device |
| [**UpdateDeviceSettings**](DevicesApi.md#updatedevicesettings) | **PUT** /oapi/v1/devices/{device_id}/settings | Updates device settings |

<a id="createdevice"></a>
# **CreateDevice**
> Device CreateDevice (DeviceCreate deviceCreate)

Creates a new device

Creates a new device in the account. Provide the required device fields in the request body. 

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
    public class CreateDeviceExample
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
            var apiInstance = new DevicesApi(httpClient, config, httpClientHandler);
            var deviceCreate = new DeviceCreate(); // DeviceCreate | 

            try
            {
                // Creates a new device
                Device result = apiInstance.CreateDevice(deviceCreate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DevicesApi.CreateDevice: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CreateDeviceWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Creates a new device
    ApiResponse<Device> response = apiInstance.CreateDeviceWithHttpInfo(deviceCreate);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DevicesApi.CreateDeviceWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **deviceCreate** | [**DeviceCreate**](DeviceCreate.md) |  |  |

### Return type

[**Device**](Device.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Device created |  -  |
| **400** | Validation failed |  -  |
| **429** | Devices count reached the limit |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getdevice"></a>
# **GetDevice**
> Device GetDevice (string deviceId)

Gets a device by ID

Returns details of a specific device. Use this endpoint to retrieve device configuration and DNS connection information. 

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
    public class GetDeviceExample
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
            var apiInstance = new DevicesApi(httpClient, config, httpClientHandler);
            var deviceId = "deviceId_example";  // string | 

            try
            {
                // Gets a device by ID
                Device result = apiInstance.GetDevice(deviceId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DevicesApi.GetDevice: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetDeviceWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Gets a device by ID
    ApiResponse<Device> response = apiInstance.GetDeviceWithHttpInfo(deviceId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DevicesApi.GetDeviceWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **deviceId** | **string** |  |  |

### Return type

[**Device**](Device.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns device details |  -  |
| **404** | Device not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getdevicesettings"></a>
# **GetDeviceSettings**
> DeviceSettings GetDeviceSettings (string deviceId)

Gets device settings

Returns the current settings of a device, including protection and DNS-over-HTTPS authentication preferences. 

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
    public class GetDeviceSettingsExample
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
            var apiInstance = new DevicesApi(httpClient, config, httpClientHandler);
            var deviceId = "deviceId_example";  // string | 

            try
            {
                // Gets device settings
                DeviceSettings result = apiInstance.GetDeviceSettings(deviceId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DevicesApi.GetDeviceSettings: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetDeviceSettingsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Gets device settings
    ApiResponse<DeviceSettings> response = apiInstance.GetDeviceSettingsWithHttpInfo(deviceId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DevicesApi.GetDeviceSettingsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **deviceId** | **string** |  |  |

### Return type

[**DeviceSettings**](DeviceSettings.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns device settings |  -  |
| **404** | Device not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getdevices"></a>
# **GetDevices**
> DevicesResponse GetDevices (string? cursor = null, int? limit = null, List<string>? dnsServers = null, List<string>? devices = null, string? search = null)

Lists devices

Lists devices according to the specified parameters. Response is paginated, items are arranged in the newest-first order. For the initial request a default limit is applied if not specified. For the subsequent requests cursor must be provided (limit can be omitted). Filtering parameters, if specified for the initial request, must be provided on each page request as well. 

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
    public class GetDevicesExample
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
            var apiInstance = new DevicesApi(httpClient, config, httpClientHandler);
            var cursor = "cursor_example";  // string? | Pagination cursor (optional) 
            var limit = 10;  // int? | Pagination limit (may be overridden by cursor) (optional)  (default to 10)
            var dnsServers = new List<string>?(); // List<string>? | Filter by DNS servers (optional) 
            var devices = new List<string>?(); // List<string>? | Filter by devices (optional) 
            var search = "search_example";  // string? | Search by device name or ID (optional) 

            try
            {
                // Lists devices
                DevicesResponse result = apiInstance.GetDevices(cursor, limit, dnsServers, devices, search);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DevicesApi.GetDevices: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetDevicesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Lists devices
    ApiResponse<DevicesResponse> response = apiInstance.GetDevicesWithHttpInfo(cursor, limit, dnsServers, devices, search);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DevicesApi.GetDevicesWithHttpInfo: " + e.Message);
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
| **devices** | [**List&lt;string&gt;?**](string.md) | Filter by devices | [optional]  |
| **search** | **string?** | Search by device name or ID | [optional]  |

### Return type

[**DevicesResponse**](DevicesResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns list of devices |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getdohmobileconfig"></a>
# **GetDoHMobileConfig**
> void GetDoHMobileConfig (string deviceId, List<string>? excludeWifiNetworks = null, List<string>? excludeDomain = null)

Gets DNS-over-HTTPS .mobileconfig file

Generates and downloads a DNS-over-HTTPS .mobileconfig profile for the device. Use this file to configure AdGuard DNS on iOS devices. Optional parameters allow excluding specific Wi-Fi networks and domains. 

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
    public class GetDoHMobileConfigExample
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
            var apiInstance = new DevicesApi(httpClient, config, httpClientHandler);
            var deviceId = "deviceId_example";  // string | 
            var excludeWifiNetworks = new List<string>?(); // List<string>? | SSID list of Wi-Fi networks to exclude (optional) 
            var excludeDomain = new List<string>?(); // List<string>? | Domain list to exclude from filtering (optional) 

            try
            {
                // Gets DNS-over-HTTPS .mobileconfig file
                apiInstance.GetDoHMobileConfig(deviceId, excludeWifiNetworks, excludeDomain);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DevicesApi.GetDoHMobileConfig: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetDoHMobileConfigWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Gets DNS-over-HTTPS .mobileconfig file
    apiInstance.GetDoHMobileConfigWithHttpInfo(deviceId, excludeWifiNetworks, excludeDomain);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DevicesApi.GetDoHMobileConfigWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **deviceId** | **string** |  |  |
| **excludeWifiNetworks** | [**List&lt;string&gt;?**](string.md) | SSID list of Wi-Fi networks to exclude | [optional]  |
| **excludeDomain** | [**List&lt;string&gt;?**](string.md) | Domain list to exclude from filtering | [optional]  |

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
| **200** | DNS-over-HTTPS .mobileconfig profile |  -  |
| **404** | Device not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getdotmobileconfig"></a>
# **GetDoTMobileConfig**
> void GetDoTMobileConfig (string deviceId, List<string>? excludeWifiNetworks = null, List<string>? excludeDomain = null)

Gets DNS-over-TLS .mobileconfig file

Generates and downloads a DNS-over-TLS .mobileconfig profile for the device. Use this file to configure AdGuard DNS on iOS devices. Optional parameters allow excluding specific Wi-Fi networks and domains. 

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
    public class GetDoTMobileConfigExample
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
            var apiInstance = new DevicesApi(httpClient, config, httpClientHandler);
            var deviceId = "deviceId_example";  // string | 
            var excludeWifiNetworks = new List<string>?(); // List<string>? | SSID list of Wi-Fi networks to exclude (optional) 
            var excludeDomain = new List<string>?(); // List<string>? | Domain list to exclude from filtering (optional) 

            try
            {
                // Gets DNS-over-TLS .mobileconfig file
                apiInstance.GetDoTMobileConfig(deviceId, excludeWifiNetworks, excludeDomain);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DevicesApi.GetDoTMobileConfig: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetDoTMobileConfigWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Gets DNS-over-TLS .mobileconfig file
    apiInstance.GetDoTMobileConfigWithHttpInfo(deviceId, excludeWifiNetworks, excludeDomain);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DevicesApi.GetDoTMobileConfigWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **deviceId** | **string** |  |  |
| **excludeWifiNetworks** | [**List&lt;string&gt;?**](string.md) | SSID list of Wi-Fi networks to exclude | [optional]  |
| **excludeDomain** | [**List&lt;string&gt;?**](string.md) | Domain list to exclude from filtering | [optional]  |

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
| **200** | DNS-over-TLS .mobileconfig profile |  -  |
| **404** | Device not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="linkdedicatedipv4address"></a>
# **LinkDedicatedIPv4Address**
> void LinkDedicatedIPv4Address (string deviceId, LinkDedicatedIPv4 linkDedicatedIPv4)

Links dedicated IPv4 to the device

Links a dedicated IPv4 address to a device. Provide the IPv4 address to link in the request body. 

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
    public class LinkDedicatedIPv4AddressExample
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
            var apiInstance = new DevicesApi(httpClient, config, httpClientHandler);
            var deviceId = "deviceId_example";  // string | 
            var linkDedicatedIPv4 = new LinkDedicatedIPv4(); // LinkDedicatedIPv4 | 

            try
            {
                // Links dedicated IPv4 to the device
                apiInstance.LinkDedicatedIPv4Address(deviceId, linkDedicatedIPv4);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DevicesApi.LinkDedicatedIPv4Address: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the LinkDedicatedIPv4AddressWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Links dedicated IPv4 to the device
    apiInstance.LinkDedicatedIPv4AddressWithHttpInfo(deviceId, linkDedicatedIPv4);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DevicesApi.LinkDedicatedIPv4AddressWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **deviceId** | **string** |  |  |
| **linkDedicatedIPv4** | [**LinkDedicatedIPv4**](LinkDedicatedIPv4.md) |  |  |

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
| **200** | Dedicated IPv4 linked to the device |  -  |
| **400** | Validation failed |  -  |
| **404** | Device or address not found |  -  |
| **429** | Linked dedicated IPv4 count reached the limit |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="listdedicatedaddressesfordevice"></a>
# **ListDedicatedAddressesForDevice**
> DedicatedIps ListDedicatedAddressesForDevice (string deviceId)

Lists dedicated IPv4 and IPv6 addresses for a device

Returns dedicated IPv4 and IPv6 addresses assigned to a device. Use this endpoint to review dedicated addresses linked to a specific device. 

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
    public class ListDedicatedAddressesForDeviceExample
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
            var apiInstance = new DevicesApi(httpClient, config, httpClientHandler);
            var deviceId = "deviceId_example";  // string | 

            try
            {
                // Lists dedicated IPv4 and IPv6 addresses for a device
                DedicatedIps result = apiInstance.ListDedicatedAddressesForDevice(deviceId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DevicesApi.ListDedicatedAddressesForDevice: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListDedicatedAddressesForDeviceWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Lists dedicated IPv4 and IPv6 addresses for a device
    ApiResponse<DedicatedIps> response = apiInstance.ListDedicatedAddressesForDeviceWithHttpInfo(deviceId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DevicesApi.ListDedicatedAddressesForDeviceWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **deviceId** | **string** |  |  |

### Return type

[**DedicatedIps**](DedicatedIps.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns dedicated IPv4 and IPv6 addresses |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="listdevices"></a>
# **ListDevices**
> List&lt;Device&gt; ListDevices ()

Lists devices

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
    public class ListDevicesExample
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
            var apiInstance = new DevicesApi(httpClient, config, httpClientHandler);

            try
            {
                // Lists devices
                List<Device> result = apiInstance.ListDevices();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DevicesApi.ListDevices: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListDevicesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Lists devices
    ApiResponse<List<Device>> response = apiInstance.ListDevicesWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DevicesApi.ListDevicesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;Device&gt;**](Device.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns list of devices |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="removedevice"></a>
# **RemoveDevice**
> void RemoveDevice (string deviceId)

Removes a device

Removes a device from the account. Use this endpoint to delete a device that is no longer needed. 

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
    public class RemoveDeviceExample
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
            var apiInstance = new DevicesApi(httpClient, config, httpClientHandler);
            var deviceId = "deviceId_example";  // string | 

            try
            {
                // Removes a device
                apiInstance.RemoveDevice(deviceId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DevicesApi.RemoveDevice: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RemoveDeviceWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Removes a device
    apiInstance.RemoveDeviceWithHttpInfo(deviceId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DevicesApi.RemoveDeviceWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **deviceId** | **string** |  |  |

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
| **200** | Device removed |  -  |
| **404** | Device not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="resetdohpassword"></a>
# **ResetDOHPassword**
> void ResetDOHPassword (string deviceId)

Resets DNS-over-HTTPS password

Generates a new DNS-over-HTTPS password for a device. Use this endpoint to reset the password if it has been compromised or you want to rotate credentials. 

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
    public class ResetDOHPasswordExample
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
            var apiInstance = new DevicesApi(httpClient, config, httpClientHandler);
            var deviceId = "deviceId_example";  // string | 

            try
            {
                // Resets DNS-over-HTTPS password
                apiInstance.ResetDOHPassword(deviceId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DevicesApi.ResetDOHPassword: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ResetDOHPasswordWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Resets DNS-over-HTTPS password
    apiInstance.ResetDOHPasswordWithHttpInfo(deviceId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DevicesApi.ResetDOHPasswordWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **deviceId** | **string** |  |  |

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
| **200** | DNS-over-HTTPS password reset |  -  |
| **404** | Device not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="unlinkdedicatedipv4address"></a>
# **UnlinkDedicatedIPv4Address**
> void UnlinkDedicatedIPv4Address (string deviceId, string ip)

Unlinks dedicated IPv4 from the device

Unlinks a dedicated IPv4 address from a device. Specify the IPv4 address to unlink as a query parameter. 

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
    public class UnlinkDedicatedIPv4AddressExample
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
            var apiInstance = new DevicesApi(httpClient, config, httpClientHandler);
            var deviceId = "deviceId_example";  // string | 
            var ip = "ip_example";  // string | Dedicated IPv4 to unlink

            try
            {
                // Unlinks dedicated IPv4 from the device
                apiInstance.UnlinkDedicatedIPv4Address(deviceId, ip);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DevicesApi.UnlinkDedicatedIPv4Address: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the UnlinkDedicatedIPv4AddressWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Unlinks dedicated IPv4 from the device
    apiInstance.UnlinkDedicatedIPv4AddressWithHttpInfo(deviceId, ip);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DevicesApi.UnlinkDedicatedIPv4AddressWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **deviceId** | **string** |  |  |
| **ip** | **string** | Dedicated IPv4 to unlink |  |

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
| **200** | Dedicated IPv4 unlinked from the device |  -  |
| **404** | Device or address not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="updatedevice"></a>
# **UpdateDevice**
> void UpdateDevice (string deviceId, DeviceUpdate deviceUpdate)

Updates a device

Updates a device with the provided fields. Only the specified fields will be modified. 

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
    public class UpdateDeviceExample
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
            var apiInstance = new DevicesApi(httpClient, config, httpClientHandler);
            var deviceId = "deviceId_example";  // string | 
            var deviceUpdate = new DeviceUpdate(); // DeviceUpdate | 

            try
            {
                // Updates a device
                apiInstance.UpdateDevice(deviceId, deviceUpdate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DevicesApi.UpdateDevice: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the UpdateDeviceWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Updates a device
    apiInstance.UpdateDeviceWithHttpInfo(deviceId, deviceUpdate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DevicesApi.UpdateDeviceWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **deviceId** | **string** |  |  |
| **deviceUpdate** | [**DeviceUpdate**](DeviceUpdate.md) |  |  |

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
| **200** | Device updated |  -  |
| **400** | Validation failed |  -  |
| **404** | Device not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="updatedevicesettings"></a>
# **UpdateDeviceSettings**
> void UpdateDeviceSettings (string deviceId, DeviceSettingsUpdate deviceSettingsUpdate)

Updates device settings

Updates device settings such as protection status and DNS-over-HTTPS authentication mode. Provide the settings to update in the request body. 

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
    public class UpdateDeviceSettingsExample
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
            var apiInstance = new DevicesApi(httpClient, config, httpClientHandler);
            var deviceId = "deviceId_example";  // string | 
            var deviceSettingsUpdate = new DeviceSettingsUpdate(); // DeviceSettingsUpdate | 

            try
            {
                // Updates device settings
                apiInstance.UpdateDeviceSettings(deviceId, deviceSettingsUpdate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DevicesApi.UpdateDeviceSettings: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the UpdateDeviceSettingsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Updates device settings
    apiInstance.UpdateDeviceSettingsWithHttpInfo(deviceId, deviceSettingsUpdate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DevicesApi.UpdateDeviceSettingsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **deviceId** | **string** |  |  |
| **deviceSettingsUpdate** | [**DeviceSettingsUpdate**](DeviceSettingsUpdate.md) |  |  |

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
| **200** | Device settings updated |  -  |
| **400** | Validation failed |  -  |
| **404** | Device not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

