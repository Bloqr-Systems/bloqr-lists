# \DedicatedIpAddressesApi

All URIs are relative to *https://api.adguard-dns.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**allocate_dedicated_ipv4_address**](DedicatedIpAddressesApi.md#allocate_dedicated_ipv4_address) | **POST** /oapi/v1/dedicated_addresses/ipv4 | Allocates new dedicated IPv4
[**list_dedicated_ipv4_addresses**](DedicatedIpAddressesApi.md#list_dedicated_ipv4_addresses) | **GET** /oapi/v1/dedicated_addresses/ipv4 | Lists allocated dedicated IPv4 addresses



## allocate_dedicated_ipv4_address

> models::DedicatedIpv4Address allocate_dedicated_ipv4_address()
Allocates new dedicated IPv4

Allocates a new dedicated IPv4 address for the account. Use this endpoint when you need a static IP address for DNS resolution. 

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::DedicatedIpv4Address**](DedicatedIPv4Address.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_dedicated_ipv4_addresses

> Vec<models::DedicatedIpv4Address> list_dedicated_ipv4_addresses()
Lists allocated dedicated IPv4 addresses

Returns a list of dedicated IPv4 addresses allocated for the account. Use this endpoint to review available dedicated addresses before linking them to devices. 

### Parameters

This endpoint does not need any parameter.

### Return type

[**Vec<models::DedicatedIpv4Address>**](DedicatedIPv4Address.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

