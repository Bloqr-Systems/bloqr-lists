# PSAdGuardDNS.PSAdGuardDNS\Api.DNSServersApi

All URIs are relative to *https://api.adguard-dns.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-DNSServer**](DNSServersApi.md#New-DNSServer) | **POST** /oapi/v1/dns_servers | Creates a new DNS server
[**Get-DNSServer**](DNSServersApi.md#Get-DNSServer) | **GET** /oapi/v1/dns_servers/{dns_server_id} | Gets a DNS server by ID
[**Get-DNSServerSettings**](DNSServersApi.md#Get-DNSServerSettings) | **GET** /oapi/v1/dns_servers/{dns_server_id}/settings | Gets DNS server settings
[**Get-DnsServers**](DNSServersApi.md#Get-DnsServers) | **GET** /oapi/v2/dns_servers | Lists DNS servers
[**Invoke-ListDNSServers**](DNSServersApi.md#Invoke-ListDNSServers) | **GET** /oapi/v1/dns_servers | Lists DNS servers
[**Remove-DNSServer**](DNSServersApi.md#Remove-DNSServer) | **DELETE** /oapi/v1/dns_servers/{dns_server_id} | Removes a DNS server
[**Update-DNSServer**](DNSServersApi.md#Update-DNSServer) | **PUT** /oapi/v1/dns_servers/{dns_server_id} | Updates a DNS server
[**Update-DNSServerSettings**](DNSServersApi.md#Update-DNSServerSettings) | **PUT** /oapi/v1/dns_servers/{dns_server_id}/settings | Updates DNS server settings


<a id="New-DNSServer"></a>
# **New-DNSServer**
> DNSServer New-DNSServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DNSServerCreate] <PSCustomObject><br>

Creates a new DNS server

Creates a new DNS server. You can attach custom settings via the request body; otherwise the server will be created with default settings. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$DNSServerAccessSettingsUpdate = Initialize-DNSServerAccessSettingsUpdate -AllowedClients "["192.168.1.0/24"]" -BlockKnownScanners $false -BlockedClients "["10.0.0.0/8"]" -BlockedDomainRules "["example.org"]" -Enabled $false
$BlockingModeSettingsUpdate = Initialize-BlockingModeSettingsUpdate -BlockingMode "NONE" -Ipv4BlockingAddress "0.0.0.0" -Ipv6BlockingAddress "::"

$FilterListItemUpdate = Initialize-FilterListItemUpdate -Enabled $false -FilterId "adguard_dns_filter"
$FilterListsSettingsUpdate = Initialize-FilterListsSettingsUpdate -Enabled $false -FilterList $FilterListItemUpdate

$BlockedFilteringCategoryUpdate = Initialize-BlockedFilteringCategoryUpdate -Enabled $false -Id "adult"
$BlockedWebServiceUpdate = Initialize-BlockedWebServiceUpdate -Enabled $false -Id "9gag"

$ScheduleTime = Initialize-ScheduleTime -Hours 0 -Minutes 0
$ScheduleDayUpdate = Initialize-ScheduleDayUpdate -DayOfWeek "MONDAY" -Enabled $false -FromTime $ScheduleTime -ToTime $ScheduleTime

$ScheduleWeekUpdate = Initialize-ScheduleWeekUpdate -DailySchedule $ScheduleDayUpdate

$ParentalControlSettingsUpdate = Initialize-ParentalControlSettingsUpdate -BlockAdultWebsitesEnabled $false -BlockedFilteringCategories $BlockedFilteringCategoryUpdate -BlockedServices $BlockedWebServiceUpdate -Enabled $false -EnginesSafeSearchEnabled $false -ScreenTimeSchedule $ScheduleWeekUpdate -YoutubeSafeSearchEnabled $false

$SafebrowsingSettingsUpdate = Initialize-SafebrowsingSettingsUpdate -BlockDangerousDomains $false -BlockNrd $false -BlockingModeSettings $BlockingModeSettingsUpdate -Enabled $false -HomoglyphProtectionEnabled $false -TyposquattingProtectionEnabled $false

$UserRulesSettingsUpdate = Initialize-UserRulesSettingsUpdate -Enabled $false -Rules "["||example.org^"]"
$DNSServerSettingsUpdate = Initialize-DNSServerSettingsUpdate -AccessSettings $DNSServerAccessSettingsUpdate -AutoConnectDevicesEnabled $false -BlockChromePrefetch $false -BlockFirefoxCanary $false -BlockPrivateRelay $false -BlockTtlSeconds 3600 -BlockingModeSettings $BlockingModeSettingsUpdate -FilterListsSettings $FilterListsSettingsUpdate -IpLogEnabled $false -ParentalControlSettings $ParentalControlSettingsUpdate -ProtectionEnabled $false -SafebrowsingSettings $SafebrowsingSettingsUpdate -UserRulesSettings $UserRulesSettingsUpdate

$DNSServerCreate = Initialize-DNSServerCreate -Name "My profile" -Settings $DNSServerSettingsUpdate # DNSServerCreate | 

# Creates a new DNS server
try {
    $Result = New-DNSServer -DNSServerCreate $DNSServerCreate
} catch {
    Write-Host ("Exception occurred when calling New-DNSServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DNSServerCreate** | [**DNSServerCreate**](DNSServerCreate.md)|  | 

### Return type

[**DNSServer**](DNSServer.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DNSServer"></a>
# **Get-DNSServer**
> DNSServer Get-DNSServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DnsServerId] <String><br>

Gets a DNS server by ID

Returns details of a specific DNS server. Use this endpoint to retrieve DNS server configuration including its linked devices. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$DnsServerId = "MyDnsServerId" # String | 

# Gets a DNS server by ID
try {
    $Result = Get-DNSServer -DnsServerId $DnsServerId
} catch {
    Write-Host ("Exception occurred when calling Get-DNSServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DnsServerId** | **String**|  | 

### Return type

[**DNSServer**](DNSServer.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DNSServerSettings"></a>
# **Get-DNSServerSettings**
> DNSServerSettings Get-DNSServerSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DnsServerId] <String><br>

Gets DNS server settings

Returns the current settings of a DNS server, including filtering, parental control, and access configuration. Use this endpoint to review the current configuration before making changes. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$DnsServerId = "MyDnsServerId" # String | 

# Gets DNS server settings
try {
    $Result = Get-DNSServerSettings -DnsServerId $DnsServerId
} catch {
    Write-Host ("Exception occurred when calling Get-DNSServerSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DnsServerId** | **String**|  | 

### Return type

[**DNSServerSettings**](DNSServerSettings.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DnsServers"></a>
# **Get-DnsServers**
> DnsServersResponse Get-DnsServers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Cursor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DnsServers] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>

Lists DNS servers

Lists DNS servers according to the specified parameters. By default there is at least one default server. Response is paginated, items are arranged in the newest-first order. For the initial request a default limit is applied if not specified. For the subsequent requests cursor must be provided (limit can be omitted). Filtering parameters, if specified for the initial request, must be provided on each page request as well. 

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
$Search = "MySearch" # String | Search by DNS server name or ID (optional)

# Lists DNS servers
try {
    $Result = Get-DnsServers -Cursor $Cursor -Limit $Limit -DnsServers $DnsServers -Search $Search
} catch {
    Write-Host ("Exception occurred when calling Get-DnsServers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Cursor** | **String**| Pagination cursor | [optional] 
 **Limit** | **Int32**| Pagination limit (may be overridden by cursor) | [optional] [default to 10]
 **DnsServers** | [**String[]**](String.md)| Filter by DNS servers | [optional] 
 **Search** | **String**| Search by DNS server name or ID | [optional] 

### Return type

[**DnsServersResponse**](DnsServersResponse.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ListDNSServers"></a>
# **Invoke-ListDNSServers**
> DNSServer[] Invoke-ListDNSServers<br>

Lists DNS servers

Method is deprecated and scheduled for removal in January 2027. Use the /oapi/v2 version instead.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"



# Lists DNS servers
try {
    $Result = Invoke-ListDNSServers
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListDNSServers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DNSServer[]**](DNSServer.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-DNSServer"></a>
# **Remove-DNSServer**
> void Remove-DNSServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DnsServerId] <String><br>

Removes a DNS server

Removes a DNS server. All devices attached to this DNS server will be moved to the default DNS server. Deleting the default DNS server is forbidden. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$DnsServerId = "MyDnsServerId" # String | 

# Removes a DNS server
try {
    $Result = Remove-DNSServer -DnsServerId $DnsServerId
} catch {
    Write-Host ("Exception occurred when calling Remove-DNSServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DnsServerId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-DNSServer"></a>
# **Update-DNSServer**
> void Update-DNSServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DnsServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DNSServerUpdate] <PSCustomObject><br>

Updates a DNS server

Updates a DNS server with the provided fields. Only the specified fields will be modified. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$DnsServerId = "MyDnsServerId" # String | 
$DNSServerUpdate = Initialize-DNSServerUpdate -Name "My profile" # DNSServerUpdate | 

# Updates a DNS server
try {
    $Result = Update-DNSServer -DnsServerId $DnsServerId -DNSServerUpdate $DNSServerUpdate
} catch {
    Write-Host ("Exception occurred when calling Update-DNSServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DnsServerId** | **String**|  | 
 **DNSServerUpdate** | [**DNSServerUpdate**](DNSServerUpdate.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-DNSServerSettings"></a>
# **Update-DNSServerSettings**
> void Update-DNSServerSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DnsServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DNSServerSettingsUpdate] <PSCustomObject><br>

Updates DNS server settings

Updates the settings of a DNS server, such as filtering, parental control, and access configuration. Provide the settings to update in the request body. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"


$DnsServerId = "MyDnsServerId" # String | 
$DNSServerAccessSettingsUpdate = Initialize-DNSServerAccessSettingsUpdate -AllowedClients "["192.168.1.0/24"]" -BlockKnownScanners $false -BlockedClients "["10.0.0.0/8"]" -BlockedDomainRules "["example.org"]" -Enabled $false
$BlockingModeSettingsUpdate = Initialize-BlockingModeSettingsUpdate -BlockingMode "NONE" -Ipv4BlockingAddress "0.0.0.0" -Ipv6BlockingAddress "::"

$FilterListItemUpdate = Initialize-FilterListItemUpdate -Enabled $false -FilterId "adguard_dns_filter"
$FilterListsSettingsUpdate = Initialize-FilterListsSettingsUpdate -Enabled $false -FilterList $FilterListItemUpdate

$BlockedFilteringCategoryUpdate = Initialize-BlockedFilteringCategoryUpdate -Enabled $false -Id "adult"
$BlockedWebServiceUpdate = Initialize-BlockedWebServiceUpdate -Enabled $false -Id "9gag"

$ScheduleTime = Initialize-ScheduleTime -Hours 0 -Minutes 0
$ScheduleDayUpdate = Initialize-ScheduleDayUpdate -DayOfWeek "MONDAY" -Enabled $false -FromTime $ScheduleTime -ToTime $ScheduleTime

$ScheduleWeekUpdate = Initialize-ScheduleWeekUpdate -DailySchedule $ScheduleDayUpdate

$ParentalControlSettingsUpdate = Initialize-ParentalControlSettingsUpdate -BlockAdultWebsitesEnabled $false -BlockedFilteringCategories $BlockedFilteringCategoryUpdate -BlockedServices $BlockedWebServiceUpdate -Enabled $false -EnginesSafeSearchEnabled $false -ScreenTimeSchedule $ScheduleWeekUpdate -YoutubeSafeSearchEnabled $false

$SafebrowsingSettingsUpdate = Initialize-SafebrowsingSettingsUpdate -BlockDangerousDomains $false -BlockNrd $false -BlockingModeSettings $BlockingModeSettingsUpdate -Enabled $false -HomoglyphProtectionEnabled $false -TyposquattingProtectionEnabled $false

$UserRulesSettingsUpdate = Initialize-UserRulesSettingsUpdate -Enabled $false -Rules "["||example.org^"]"
$DNSServerSettingsUpdate = Initialize-DNSServerSettingsUpdate -AccessSettings $DNSServerAccessSettingsUpdate -AutoConnectDevicesEnabled $false -BlockChromePrefetch $false -BlockFirefoxCanary $false -BlockPrivateRelay $false -BlockTtlSeconds 3600 -BlockingModeSettings $BlockingModeSettingsUpdate -FilterListsSettings $FilterListsSettingsUpdate -IpLogEnabled $false -ParentalControlSettings $ParentalControlSettingsUpdate -ProtectionEnabled $false -SafebrowsingSettings $SafebrowsingSettingsUpdate -UserRulesSettings $UserRulesSettingsUpdate # DNSServerSettingsUpdate | 

# Updates DNS server settings
try {
    $Result = Update-DNSServerSettings -DnsServerId $DnsServerId -DNSServerSettingsUpdate $DNSServerSettingsUpdate
} catch {
    Write-Host ("Exception occurred when calling Update-DNSServerSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DnsServerId** | **String**|  | 
 **DNSServerSettingsUpdate** | [**DNSServerSettingsUpdate**](DNSServerSettingsUpdate.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

