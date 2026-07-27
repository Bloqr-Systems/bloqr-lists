# \AccountApi

All URIs are relative to *https://api.adguard-dns.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_account_limits**](AccountApi.md#get_account_limits) | **GET** /oapi/v1/account/limits | Gets account limits



## get_account_limits

> models::AccountLimits get_account_limits()
Gets account limits

Returns account limits for the current account. Use this endpoint to read current usage and maximum values before creating or updating resources. 

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::AccountLimits**](AccountLimits.md)

### Authorization

[ApiKey](../README.md#ApiKey), [AuthToken](../README.md#AuthToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

