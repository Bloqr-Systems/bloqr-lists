# \DevicesApi

All URIs are relative to *https://api.adguard-dns.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_device**](DevicesApi.md#create_device) | **POST** /oapi/v1/devices | Creates a new device
[**get_device**](DevicesApi.md#get_device) | **GET** /oapi/v1/devices/{device_id} | Gets a device by ID
[**get_device_settings**](DevicesApi.md#get_device_settings) | **GET** /oapi/v1/devices/{device_id}/settings | Gets device settings
[**get_devices**](DevicesApi.md#get_devices) | **GET** /oapi/v2/devices | Lists devices
[**get_do_h_mobile_config**](DevicesApi.md#get_do_h_mobile_config) | **GET** /oapi/v1/devices/{device_id}/doh.mobileconfig | Gets DNS-over-HTTPS .mobileconfig file
[**get_do_t_mobile_config**](DevicesApi.md#get_do_t_mobile_config) | **GET** /oapi/v1/devices/{device_id}/dot.mobileconfig | Gets DNS-over-TLS .mobileconfig file
[**link_dedicated_ipv4_address**](DevicesApi.md#link_dedicated_ipv4_address) | **POST** /oapi/v1/devices/{device_id}/dedicated_addresses/ipv4 | Links dedicated IPv4 to the device
[**list_dedicated_addresses_for_device**](DevicesApi.md#list_dedicated_addresses_for_device) | **GET** /oapi/v1/devices/{device_id}/dedicated_addresses | Lists dedicated IPv4 and IPv6 addresses for a device
[**list_devices**](DevicesApi.md#list_devices) | **GET** /oapi/v1/devices | Lists devices
[**remove_device**](DevicesApi.md#remove_device) | **DELETE** /oapi/v1/devices/{device_id} | Removes a device
[**reset_doh_password**](DevicesApi.md#reset_doh_password) | **PUT** /oapi/v1/devices/{device_id}/doh_password/reset | Resets DNS-over-HTTPS password
[**unlink_dedicated_ipv4_address**](DevicesApi.md#unlink_dedicated_ipv4_address) | **DELETE** /oapi/v1/devices/{device_id}/dedicated_addresses/ipv4 | Unlinks dedicated IPv4 from the device
[**update_device**](DevicesApi.md#update_device) | **PUT** /oapi/v1/devices/{device_id} | Updates a device
[**update_device_settings**](DevicesApi.md#update_device_settings) | **PUT** /oapi/v1/devices/{device_id}/settings | Updates device settings



## create_device

> models::Device create_device(device_create)
Creates a new device

Creates a new device in the account. Provide the required device fields in the request body. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**device_create** | [**DeviceCreate**](DeviceCreate.md) |  | [required] |

### Return type

[**models::Device**](Device.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_device

> models::Device get_device(device_id)
Gets a device by ID

Returns details of a specific device. Use this endpoint to retrieve device configuration and DNS connection information. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**device_id** | **String** |  | [required] |

### Return type

[**models::Device**](Device.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_device_settings

> models::DeviceSettings get_device_settings(device_id)
Gets device settings

Returns the current settings of a device, including protection and DNS-over-HTTPS authentication preferences. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**device_id** | **String** |  | [required] |

### Return type

[**models::DeviceSettings**](DeviceSettings.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_devices

> models::DevicesResponse get_devices(cursor, limit, dns_servers, devices, search)
Lists devices

Lists devices according to the specified parameters. Response is paginated, items are arranged in the newest-first order. For the initial request a default limit is applied if not specified. For the subsequent requests cursor must be provided (limit can be omitted). Filtering parameters, if specified for the initial request, must be provided on each page request as well. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**cursor** | Option<**String**> | Pagination cursor |  |
**limit** | Option<**i32**> | Pagination limit (may be overridden by cursor) |  |[default to 10]
**dns_servers** | Option<[**Vec<String>**](String.md)> | Filter by DNS servers |  |
**devices** | Option<[**Vec<String>**](String.md)> | Filter by devices |  |
**search** | Option<**String**> | Search by device name or ID |  |

### Return type

[**models::DevicesResponse**](DevicesResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_do_h_mobile_config

> get_do_h_mobile_config(device_id, exclude_wifi_networks, exclude_domain)
Gets DNS-over-HTTPS .mobileconfig file

Generates and downloads a DNS-over-HTTPS .mobileconfig profile for the device. Use this file to configure AdGuard DNS on iOS devices. Optional parameters allow excluding specific Wi-Fi networks and domains. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**device_id** | **String** |  | [required] |
**exclude_wifi_networks** | Option<[**Vec<String>**](String.md)> | SSID list of Wi-Fi networks to exclude |  |
**exclude_domain** | Option<[**Vec<String>**](String.md)> | Domain list to exclude from filtering |  |

### Return type

 (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_do_t_mobile_config

> get_do_t_mobile_config(device_id, exclude_wifi_networks, exclude_domain)
Gets DNS-over-TLS .mobileconfig file

Generates and downloads a DNS-over-TLS .mobileconfig profile for the device. Use this file to configure AdGuard DNS on iOS devices. Optional parameters allow excluding specific Wi-Fi networks and domains. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**device_id** | **String** |  | [required] |
**exclude_wifi_networks** | Option<[**Vec<String>**](String.md)> | SSID list of Wi-Fi networks to exclude |  |
**exclude_domain** | Option<[**Vec<String>**](String.md)> | Domain list to exclude from filtering |  |

### Return type

 (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## link_dedicated_ipv4_address

> link_dedicated_ipv4_address(device_id, link_dedicated_ipv4)
Links dedicated IPv4 to the device

Links a dedicated IPv4 address to a device. Provide the IPv4 address to link in the request body. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**device_id** | **String** |  | [required] |
**link_dedicated_ipv4** | [**LinkDedicatedIpv4**](LinkDedicatedIpv4.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_dedicated_addresses_for_device

> models::DedicatedIps list_dedicated_addresses_for_device(device_id)
Lists dedicated IPv4 and IPv6 addresses for a device

Returns dedicated IPv4 and IPv6 addresses assigned to a device. Use this endpoint to review dedicated addresses linked to a specific device. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**device_id** | **String** |  | [required] |

### Return type

[**models::DedicatedIps**](DedicatedIps.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_devices

> Vec<models::Device> list_devices()
Lists devices

Method is deprecated and scheduled for removal in January 2027. Use the /oapi/v2 version instead.

### Parameters

This endpoint does not need any parameter.

### Return type

[**Vec<models::Device>**](Device.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## remove_device

> remove_device(device_id)
Removes a device

Removes a device from the account. Use this endpoint to delete a device that is no longer needed. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**device_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## reset_doh_password

> reset_doh_password(device_id)
Resets DNS-over-HTTPS password

Generates a new DNS-over-HTTPS password for a device. Use this endpoint to reset the password if it has been compromised or you want to rotate credentials. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**device_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## unlink_dedicated_ipv4_address

> unlink_dedicated_ipv4_address(device_id, ip)
Unlinks dedicated IPv4 from the device

Unlinks a dedicated IPv4 address from a device. Specify the IPv4 address to unlink as a query parameter. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**device_id** | **String** |  | [required] |
**ip** | **String** | Dedicated IPv4 to unlink | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_device

> update_device(device_id, device_update)
Updates a device

Updates a device with the provided fields. Only the specified fields will be modified. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**device_id** | **String** |  | [required] |
**device_update** | [**DeviceUpdate**](DeviceUpdate.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_device_settings

> update_device_settings(device_id, device_settings_update)
Updates device settings

Updates device settings such as protection status and DNS-over-HTTPS authentication mode. Provide the settings to update in the request body. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**device_id** | **String** |  | [required] |
**device_settings_update** | [**DeviceSettingsUpdate**](DeviceSettingsUpdate.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

