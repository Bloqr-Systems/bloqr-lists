# PSAdGuardDNS.PSAdGuardDNS\Api.DevicesApi

All URIs are relative to *https://api.adguard-dns.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Device**](DevicesApi.md#New-Device) | **POST** /oapi/v1/devices | Creates a new device
[**Get-Device**](DevicesApi.md#Get-Device) | **GET** /oapi/v1/devices/{device_id} | Gets a device by ID
[**Get-DeviceSettings**](DevicesApi.md#Get-DeviceSettings) | **GET** /oapi/v1/devices/{device_id}/settings | Gets device settings
[**Get-Devices**](DevicesApi.md#Get-Devices) | **GET** /oapi/v2/devices | Lists devices
[**Get-DoHMobileConfig**](DevicesApi.md#Get-DoHMobileConfig) | **GET** /oapi/v1/devices/{device_id}/doh.mobileconfig | Gets DNS-over-HTTPS .mobileconfig file
[**Get-DoTMobileConfig**](DevicesApi.md#Get-DoTMobileConfig) | **GET** /oapi/v1/devices/{device_id}/dot.mobileconfig | Gets DNS-over-TLS .mobileconfig file
[**Invoke-LinkDedicatedIPv4Address**](DevicesApi.md#Invoke-LinkDedicatedIPv4Address) | **POST** /oapi/v1/devices/{device_id}/dedicated_addresses/ipv4 | Links dedicated IPv4 to the device
[**Invoke-ListDedicatedAddressesForDevice**](DevicesApi.md#Invoke-ListDedicatedAddressesForDevice) | **GET** /oapi/v1/devices/{device_id}/dedicated_addresses | Lists dedicated IPv4 and IPv6 addresses for a device
[**Invoke-ListDevices**](DevicesApi.md#Invoke-ListDevices) | **GET** /oapi/v1/devices | Lists devices
[**Remove-Device**](DevicesApi.md#Remove-Device) | **DELETE** /oapi/v1/devices/{device_id} | Removes a device
[**Reset-DOHPassword**](DevicesApi.md#Reset-DOHPassword) | **PUT** /oapi/v1/devices/{device_id}/doh_password/reset | Resets DNS-over-HTTPS password
[**Invoke-UnlinkDedicatedIPv4Address**](DevicesApi.md#Invoke-UnlinkDedicatedIPv4Address) | **DELETE** /oapi/v1/devices/{device_id}/dedicated_addresses/ipv4 | Unlinks dedicated IPv4 from the device
[**Update-Device**](DevicesApi.md#Update-Device) | **PUT** /oapi/v1/devices/{device_id} | Updates a device
[**Update-DeviceSettings**](DevicesApi.md#Update-DeviceSettings) | **PUT** /oapi/v1/devices/{device_id}/settings | Updates device settings


<a id="New-Device"></a>
# **New-Device**
> Device New-Device<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceCreate] <PSCustomObject><br>

Creates a new device

Creates a new device in the account. Provide the required device fields in the request body. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$DeviceCreate = Initialize-DeviceCreate -DeviceType "WINDOWS" -DnsServerId "a9f29be1" -Name "My phone" # DeviceCreate | 

# Creates a new device
try {
    $Result = New-Device -DeviceCreate $DeviceCreate
} catch {
    Write-Host ("Exception occurred when calling New-Device: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceCreate** | [**DeviceCreate**](DeviceCreate.md)|  | 

### Return type

[**Device**](Device.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Device"></a>
# **Get-Device**
> Device Get-Device<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>

Gets a device by ID

Returns details of a specific device. Use this endpoint to retrieve device configuration and DNS connection information. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$DeviceId = "MyDeviceId" # String | 

# Gets a device by ID
try {
    $Result = Get-Device -DeviceId $DeviceId
} catch {
    Write-Host ("Exception occurred when calling Get-Device: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceId** | **String**|  | 

### Return type

[**Device**](Device.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DeviceSettings"></a>
# **Get-DeviceSettings**
> DeviceSettings Get-DeviceSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>

Gets device settings

Returns the current settings of a device, including protection and DNS-over-HTTPS authentication preferences. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$DeviceId = "MyDeviceId" # String | 

# Gets device settings
try {
    $Result = Get-DeviceSettings -DeviceId $DeviceId
} catch {
    Write-Host ("Exception occurred when calling Get-DeviceSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceId** | **String**|  | 

### Return type

[**DeviceSettings**](DeviceSettings.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Devices"></a>
# **Get-Devices**
> DevicesResponse Get-Devices<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Cursor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DnsServers] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Devices] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>

Lists devices

Lists devices according to the specified parameters. Response is paginated, items are arranged in the newest-first order. For the initial request a default limit is applied if not specified. For the subsequent requests cursor must be provided (limit can be omitted). Filtering parameters, if specified for the initial request, must be provided on each page request as well. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$Cursor = "MyCursor" # String | Pagination cursor (optional)
$Limit = 56 # Int32 | Pagination limit (may be overridden by cursor) (optional) (default to 10)
$DnsServers = "MyDnsServers" # String[] | Filter by DNS servers (optional)
$Devices = "MyDevices" # String[] | Filter by devices (optional)
$Search = "MySearch" # String | Search by device name or ID (optional)

# Lists devices
try {
    $Result = Get-Devices -Cursor $Cursor -Limit $Limit -DnsServers $DnsServers -Devices $Devices -Search $Search
} catch {
    Write-Host ("Exception occurred when calling Get-Devices: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Cursor** | **String**| Pagination cursor | [optional] 
 **Limit** | **Int32**| Pagination limit (may be overridden by cursor) | [optional] [default to 10]
 **DnsServers** | [**String[]**](String.md)| Filter by DNS servers | [optional] 
 **Devices** | [**String[]**](String.md)| Filter by devices | [optional] 
 **Search** | **String**| Search by device name or ID | [optional] 

### Return type

[**DevicesResponse**](DevicesResponse.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DoHMobileConfig"></a>
# **Get-DoHMobileConfig**
> void Get-DoHMobileConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExcludeWifiNetworks] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExcludeDomain] <String[]><br>

Gets DNS-over-HTTPS .mobileconfig file

Generates and downloads a DNS-over-HTTPS .mobileconfig profile for the device. Use this file to configure AdGuard DNS on iOS devices. Optional parameters allow excluding specific Wi-Fi networks and domains. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$DeviceId = "MyDeviceId" # String | 
$ExcludeWifiNetworks = "MyExcludeWifiNetworks" # String[] | SSID list of Wi-Fi networks to exclude (optional)
$ExcludeDomain = "MyExcludeDomain" # String[] | Domain list to exclude from filtering (optional)

# Gets DNS-over-HTTPS .mobileconfig file
try {
    $Result = Get-DoHMobileConfig -DeviceId $DeviceId -ExcludeWifiNetworks $ExcludeWifiNetworks -ExcludeDomain $ExcludeDomain
} catch {
    Write-Host ("Exception occurred when calling Get-DoHMobileConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceId** | **String**|  | 
 **ExcludeWifiNetworks** | [**String[]**](String.md)| SSID list of Wi-Fi networks to exclude | [optional] 
 **ExcludeDomain** | [**String[]**](String.md)| Domain list to exclude from filtering | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DoTMobileConfig"></a>
# **Get-DoTMobileConfig**
> void Get-DoTMobileConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExcludeWifiNetworks] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExcludeDomain] <String[]><br>

Gets DNS-over-TLS .mobileconfig file

Generates and downloads a DNS-over-TLS .mobileconfig profile for the device. Use this file to configure AdGuard DNS on iOS devices. Optional parameters allow excluding specific Wi-Fi networks and domains. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$DeviceId = "MyDeviceId" # String | 
$ExcludeWifiNetworks = "MyExcludeWifiNetworks" # String[] | SSID list of Wi-Fi networks to exclude (optional)
$ExcludeDomain = "MyExcludeDomain" # String[] | Domain list to exclude from filtering (optional)

# Gets DNS-over-TLS .mobileconfig file
try {
    $Result = Get-DoTMobileConfig -DeviceId $DeviceId -ExcludeWifiNetworks $ExcludeWifiNetworks -ExcludeDomain $ExcludeDomain
} catch {
    Write-Host ("Exception occurred when calling Get-DoTMobileConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceId** | **String**|  | 
 **ExcludeWifiNetworks** | [**String[]**](String.md)| SSID list of Wi-Fi networks to exclude | [optional] 
 **ExcludeDomain** | [**String[]**](String.md)| Domain list to exclude from filtering | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-LinkDedicatedIPv4Address"></a>
# **Invoke-LinkDedicatedIPv4Address**
> void Invoke-LinkDedicatedIPv4Address<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LinkDedicatedIPv4] <PSCustomObject><br>

Links dedicated IPv4 to the device

Links a dedicated IPv4 address to a device. Provide the IPv4 address to link in the request body. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$DeviceId = "MyDeviceId" # String | 
$LinkDedicatedIPv4 = Initialize-LinkDedicatedIPv4 -Ip "94.140.14.15" # LinkDedicatedIPv4 | 

# Links dedicated IPv4 to the device
try {
    $Result = Invoke-LinkDedicatedIPv4Address -DeviceId $DeviceId -LinkDedicatedIPv4 $LinkDedicatedIPv4
} catch {
    Write-Host ("Exception occurred when calling Invoke-LinkDedicatedIPv4Address: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceId** | **String**|  | 
 **LinkDedicatedIPv4** | [**LinkDedicatedIPv4**](LinkDedicatedIPv4.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ListDedicatedAddressesForDevice"></a>
# **Invoke-ListDedicatedAddressesForDevice**
> DedicatedIps Invoke-ListDedicatedAddressesForDevice<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>

Lists dedicated IPv4 and IPv6 addresses for a device

Returns dedicated IPv4 and IPv6 addresses assigned to a device. Use this endpoint to review dedicated addresses linked to a specific device. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$DeviceId = "MyDeviceId" # String | 

# Lists dedicated IPv4 and IPv6 addresses for a device
try {
    $Result = Invoke-ListDedicatedAddressesForDevice -DeviceId $DeviceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListDedicatedAddressesForDevice: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceId** | **String**|  | 

### Return type

[**DedicatedIps**](DedicatedIps.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ListDevices"></a>
# **Invoke-ListDevices**
> Device[] Invoke-ListDevices<br>

Lists devices

Method is deprecated and scheduled for removal in January 2027. Use the /oapi/v2 version instead.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"



# Lists devices
try {
    $Result = Invoke-ListDevices
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListDevices: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Device[]**](Device.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-Device"></a>
# **Remove-Device**
> void Remove-Device<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>

Removes a device

Removes a device from the account. Use this endpoint to delete a device that is no longer needed. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$DeviceId = "MyDeviceId" # String | 

# Removes a device
try {
    $Result = Remove-Device -DeviceId $DeviceId
} catch {
    Write-Host ("Exception occurred when calling Remove-Device: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Reset-DOHPassword"></a>
# **Reset-DOHPassword**
> void Reset-DOHPassword<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>

Resets DNS-over-HTTPS password

Generates a new DNS-over-HTTPS password for a device. Use this endpoint to reset the password if it has been compromised or you want to rotate credentials. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$DeviceId = "MyDeviceId" # String | 

# Resets DNS-over-HTTPS password
try {
    $Result = Reset-DOHPassword -DeviceId $DeviceId
} catch {
    Write-Host ("Exception occurred when calling Reset-DOHPassword: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-UnlinkDedicatedIPv4Address"></a>
# **Invoke-UnlinkDedicatedIPv4Address**
> void Invoke-UnlinkDedicatedIPv4Address<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Ip] <String><br>

Unlinks dedicated IPv4 from the device

Unlinks a dedicated IPv4 address from a device. Specify the IPv4 address to unlink as a query parameter. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$DeviceId = "MyDeviceId" # String | 
$Ip = "MyIp" # String | Dedicated IPv4 to unlink

# Unlinks dedicated IPv4 from the device
try {
    $Result = Invoke-UnlinkDedicatedIPv4Address -DeviceId $DeviceId -Ip $Ip
} catch {
    Write-Host ("Exception occurred when calling Invoke-UnlinkDedicatedIPv4Address: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceId** | **String**|  | 
 **Ip** | **String**| Dedicated IPv4 to unlink | 

### Return type

void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Device"></a>
# **Update-Device**
> void Update-Device<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceUpdate] <PSCustomObject><br>

Updates a device

Updates a device with the provided fields. Only the specified fields will be modified. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$DeviceId = "MyDeviceId" # String | 
$DeviceUpdate = Initialize-DeviceUpdate -DeviceType "WINDOWS" -DnsServerId "a9f29be1" -Name "My phone" # DeviceUpdate | 

# Updates a device
try {
    $Result = Update-Device -DeviceId $DeviceId -DeviceUpdate $DeviceUpdate
} catch {
    Write-Host ("Exception occurred when calling Update-Device: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceId** | **String**|  | 
 **DeviceUpdate** | [**DeviceUpdate**](DeviceUpdate.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-DeviceSettings"></a>
# **Update-DeviceSettings**
> void Update-DeviceSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceSettingsUpdate] <PSCustomObject><br>

Updates device settings

Updates device settings such as protection status and DNS-over-HTTPS authentication mode. Provide the settings to update in the request body. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$DeviceId = "MyDeviceId" # String | 
$DeviceSettingsUpdate = Initialize-DeviceSettingsUpdate -DetectDohAuthOnly $false -ProtectionEnabled $false # DeviceSettingsUpdate | 

# Updates device settings
try {
    $Result = Update-DeviceSettings -DeviceId $DeviceId -DeviceSettingsUpdate $DeviceSettingsUpdate
} catch {
    Write-Host ("Exception occurred when calling Update-DeviceSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceId** | **String**|  | 
 **DeviceSettingsUpdate** | [**DeviceSettingsUpdate**](DeviceSettingsUpdate.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

