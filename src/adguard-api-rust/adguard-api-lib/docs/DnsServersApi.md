# \DnsServersApi

All URIs are relative to *https://api.adguard-dns.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_dns_server**](DnsServersApi.md#create_dns_server) | **POST** /oapi/v1/dns_servers | Creates a new DNS server
[**get_dns_server**](DnsServersApi.md#get_dns_server) | **GET** /oapi/v1/dns_servers/{dns_server_id} | Gets a DNS server by ID
[**get_dns_server_settings**](DnsServersApi.md#get_dns_server_settings) | **GET** /oapi/v1/dns_servers/{dns_server_id}/settings | Gets DNS server settings
[**get_dns_servers**](DnsServersApi.md#get_dns_servers) | **GET** /oapi/v2/dns_servers | Lists DNS servers
[**list_dns_servers**](DnsServersApi.md#list_dns_servers) | **GET** /oapi/v1/dns_servers | Lists DNS servers
[**remove_dns_server**](DnsServersApi.md#remove_dns_server) | **DELETE** /oapi/v1/dns_servers/{dns_server_id} | Removes a DNS server
[**update_dns_server**](DnsServersApi.md#update_dns_server) | **PUT** /oapi/v1/dns_servers/{dns_server_id} | Updates a DNS server
[**update_dns_server_settings**](DnsServersApi.md#update_dns_server_settings) | **PUT** /oapi/v1/dns_servers/{dns_server_id}/settings | Updates DNS server settings



## create_dns_server

> models::DnsServer create_dns_server(dns_server_create)
Creates a new DNS server

Creates a new DNS server. You can attach custom settings via the request body; otherwise the server will be created with default settings. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**dns_server_create** | [**DnsServerCreate**](DnsServerCreate.md) |  | [required] |

### Return type

[**models::DnsServer**](DNSServer.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_dns_server

> models::DnsServer get_dns_server(dns_server_id)
Gets a DNS server by ID

Returns details of a specific DNS server. Use this endpoint to retrieve DNS server configuration including its linked devices. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**dns_server_id** | **String** |  | [required] |

### Return type

[**models::DnsServer**](DNSServer.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_dns_server_settings

> models::DnsServerSettings get_dns_server_settings(dns_server_id)
Gets DNS server settings

Returns the current settings of a DNS server, including filtering, parental control, and access configuration. Use this endpoint to review the current configuration before making changes. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**dns_server_id** | **String** |  | [required] |

### Return type

[**models::DnsServerSettings**](DNSServerSettings.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_dns_servers

> models::DnsServersResponse get_dns_servers(cursor, limit, dns_servers, search)
Lists DNS servers

Lists DNS servers according to the specified parameters. By default there is at least one default server. Response is paginated, items are arranged in the newest-first order. For the initial request a default limit is applied if not specified. For the subsequent requests cursor must be provided (limit can be omitted). Filtering parameters, if specified for the initial request, must be provided on each page request as well. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**cursor** | Option<**String**> | Pagination cursor |  |
**limit** | Option<**i32**> | Pagination limit (may be overridden by cursor) |  |[default to 10]
**dns_servers** | Option<[**Vec<String>**](String.md)> | Filter by DNS servers |  |
**search** | Option<**String**> | Search by DNS server name or ID |  |

### Return type

[**models::DnsServersResponse**](DnsServersResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_dns_servers

> Vec<models::DnsServer> list_dns_servers()
Lists DNS servers

Method is deprecated and scheduled for removal in January 2027. Use the /oapi/v2 version instead.

### Parameters

This endpoint does not need any parameter.

### Return type

[**Vec<models::DnsServer>**](DNSServer.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## remove_dns_server

> remove_dns_server(dns_server_id)
Removes a DNS server

Removes a DNS server. All devices attached to this DNS server will be moved to the default DNS server. Deleting the default DNS server is forbidden. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**dns_server_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_dns_server

> update_dns_server(dns_server_id, dns_server_update)
Updates a DNS server

Updates a DNS server with the provided fields. Only the specified fields will be modified. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**dns_server_id** | **String** |  | [required] |
**dns_server_update** | [**DnsServerUpdate**](DnsServerUpdate.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_dns_server_settings

> update_dns_server_settings(dns_server_id, dns_server_settings_update)
Updates DNS server settings

Updates the settings of a DNS server, such as filtering, parental control, and access configuration. Provide the settings to update in the request body. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**dns_server_id** | **String** |  | [required] |
**dns_server_settings_update** | [**DnsServerSettingsUpdate**](DnsServerSettingsUpdate.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

