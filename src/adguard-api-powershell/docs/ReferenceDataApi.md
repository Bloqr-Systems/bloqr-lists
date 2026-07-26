# PSAdGuardDNS.PSAdGuardDNS\Api.ReferenceDataApi

All URIs are relative to *https://api.adguard-dns.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ListFilterLists**](ReferenceDataApi.md#Invoke-ListFilterLists) | **GET** /oapi/v1/filter_lists | Lists filter lists
[**Invoke-ListParentalControlFilteringCategories**](ReferenceDataApi.md#Invoke-ListParentalControlFilteringCategories) | **GET** /oapi/v1/parental_control_categories | Lists all parental control filtering categories
[**Invoke-ListWebServices**](ReferenceDataApi.md#Invoke-ListWebServices) | **GET** /oapi/v1/web_services | Lists web services


<a id="Invoke-ListFilterLists"></a>
# **Invoke-ListFilterLists**
> FilterList[] Invoke-ListFilterLists<br>

Lists filter lists

Returns available filter lists for the current locale. Use this endpoint to retrieve filter definitions before applying them to DNS server settings. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"



# Lists filter lists
try {
    $Result = Invoke-ListFilterLists
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListFilterLists: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**FilterList[]**](FilterList.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ListParentalControlFilteringCategories"></a>
# **Invoke-ListParentalControlFilteringCategories**
> ParentalControlFilteringCategory[] Invoke-ListParentalControlFilteringCategories<br>

Lists all parental control filtering categories

Returns all available parental control filtering categories. Use this endpoint to retrieve categories for configuring parental control settings on a DNS server. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"



# Lists all parental control filtering categories
try {
    $Result = Invoke-ListParentalControlFilteringCategories
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListParentalControlFilteringCategories: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ParentalControlFilteringCategory[]**](ParentalControlFilteringCategory.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ListWebServices"></a>
# **Invoke-ListWebServices**
> WebService[] Invoke-ListWebServices<br>

Lists web services

Returns a list of known web services with their identifiers and icons. Use this endpoint to get service data for parental control configuration. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"



# Lists web services
try {
    $Result = Invoke-ListWebServices
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListWebServices: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebService[]**](WebService.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

