# AdGuard.ApiClient.Api.AuthenticationApi

All URIs are relative to *https://api.adguard-dns.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**AccessToken**](AuthenticationApi.md#accesstoken) | **POST** /oapi/v1/oauth_token | Issues an access token |
| [**Authorize**](AuthenticationApi.md#authorize) | **GET** /oapi/v1/oauth_authorize | Redirects to the authorization endpoint |
| [**RevokeToken**](AuthenticationApi.md#revoketoken) | **POST** /oapi/v1/revoke_token | Revokes a refresh token |

<a id="accesstoken"></a>
# **AccessToken**
> AccessTokenResponse AccessToken (string grantType, string? clientId = null, string? code = null, string? codeVerifier = null, string? mfaToken = null, string? password = null, string? redirectUri = null, string? refreshToken = null, string? username = null)

Issues an access token

Obtains an access token using one of three grant types:  **1. Password + optional 2FA** (`grant_type=password`): Provide `username` and `password`. If two-factor authentication is enabled on the account, also provide `mfa_token`.  **2. Refresh token** (`grant_type=refresh_token`): Provide `refresh_token` to exchange it for a new access token without re-entering credentials.  **3. Authorization Code + PKCE** (`grant_type=authorization_code`): Exchange an authorization code obtained via the `/oauth_authorize` endpoint. Provide `code`, `client_id`, `code_verifier`, and `redirect_uri`. 

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
    public class AccessTokenExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.adguard-dns.io";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AuthenticationApi(httpClient, config, httpClientHandler);
            var grantType = "grantType_example";  // string | OAuth2 grant type. Accepted values: \\\"password\\\", \\\"refresh_token\\\", \\\"authorization_code\\\". Required for Authorization Code + PKCE flow.
            var clientId = "clientId_example";  // string? | OAuth2 client identifier (optional) 
            var code = "code_example";  // string? | Authorization code received from the authorization server (optional) 
            var codeVerifier = "codeVerifier_example";  // string? | PKCE code verifier (43-128 chars) (optional) 
            var mfaToken = "mfaToken_example";  // string? | Two-Factor authentication token (if enabled in account settings) (optional) 
            var password = "password_example";  // string? | Account password (optional) 
            var redirectUri = "redirectUri_example";  // string? | Redirect URI used in the authorization request (optional) 
            var refreshToken = "refreshToken_example";  // string? | Refresh token (optional) 
            var username = "username_example";  // string? | Account email (optional) 

            try
            {
                // Issues an access token
                AccessTokenResponse result = apiInstance.AccessToken(grantType, clientId, code, codeVerifier, mfaToken, password, redirectUri, refreshToken, username);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AuthenticationApi.AccessToken: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AccessTokenWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Issues an access token
    ApiResponse<AccessTokenResponse> response = apiInstance.AccessTokenWithHttpInfo(grantType, clientId, code, codeVerifier, mfaToken, password, redirectUri, refreshToken, username);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AuthenticationApi.AccessTokenWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **grantType** | **string** | OAuth2 grant type. Accepted values: \\\&quot;password\\\&quot;, \\\&quot;refresh_token\\\&quot;, \\\&quot;authorization_code\\\&quot;. Required for Authorization Code + PKCE flow. |  |
| **clientId** | **string?** | OAuth2 client identifier | [optional]  |
| **code** | **string?** | Authorization code received from the authorization server | [optional]  |
| **codeVerifier** | **string?** | PKCE code verifier (43-128 chars) | [optional]  |
| **mfaToken** | **string?** | Two-Factor authentication token (if enabled in account settings) | [optional]  |
| **password** | **string?** | Account password | [optional]  |
| **redirectUri** | **string?** | Redirect URI used in the authorization request | [optional]  |
| **refreshToken** | **string?** | Refresh token | [optional]  |
| **username** | **string?** | Account email | [optional]  |

### Return type

[**AccessTokenResponse**](AccessTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json, */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Access token issued |  -  |
| **400** | Missing required parameters |  -  |
| **401** | Invalid credentials, MFA token, refresh token, authorization code, or PKCE code_verifier provided |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="authorize"></a>
# **Authorize**
> void Authorize (string clientId, string responseType, string redirectUri, string? state = null, string? aid = null, string? source = null, string? codeChallenge = null, string? codeChallengeMethod = null)

Redirects to the authorization endpoint

Initiates an OAuth2 authorization flow by redirecting the user to the AdGuard authorization server.  Use `response_type=token` for the Implicit grant or `response_type=code` together with `code_challenge` and `code_challenge_method=S256` for the Authorization Code + PKCE flow.  On success the authorization server redirects back to `redirect_uri`. For the Implicit grant the access token is embedded in the URL fragment (`#access_token=...`). For the Authorization Code flow a one-time `code` is appended as a query parameter and must be exchanged for tokens via the `/oauth_token` endpoint. 

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
    public class AuthorizeExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.adguard-dns.io";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AuthenticationApi(httpClient, config, httpClientHandler);
            var clientId = "clientId_example";  // string | OAuth2 client identifier
            var responseType = "responseType_example";  // string | Type of grant. Use response_type=token for Implicit grant, response_type=code for Authorization Code + PKCE flow
            var redirectUri = "redirectUri_example";  // string | A successful response results in a redirect to this URL
            var state = "state_example";  // string? | An opaque value, used for security purposes (optional) 
            var aid = "aid_example";  // string? | Affiliate identifier (optional) 
            var source = "source_example";  // string? | Affiliate source (optional) 
            var codeChallenge = "codeChallenge_example";  // string? | PKCE code challenge: BASE64URL(SHA256(code_verifier)). Required for Authorization Code + PKCE flow (optional) 
            var codeChallengeMethod = "codeChallengeMethod_example";  // string? | PKCE challenge method. Only \"S256\" is supported (optional) 

            try
            {
                // Redirects to the authorization endpoint
                apiInstance.Authorize(clientId, responseType, redirectUri, state, aid, source, codeChallenge, codeChallengeMethod);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AuthenticationApi.Authorize: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AuthorizeWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Redirects to the authorization endpoint
    apiInstance.AuthorizeWithHttpInfo(clientId, responseType, redirectUri, state, aid, source, codeChallenge, codeChallengeMethod);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AuthenticationApi.AuthorizeWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **clientId** | **string** | OAuth2 client identifier |  |
| **responseType** | **string** | Type of grant. Use response_type&#x3D;token for Implicit grant, response_type&#x3D;code for Authorization Code + PKCE flow |  |
| **redirectUri** | **string** | A successful response results in a redirect to this URL |  |
| **state** | **string?** | An opaque value, used for security purposes | [optional]  |
| **aid** | **string?** | Affiliate identifier | [optional]  |
| **source** | **string?** | Affiliate source | [optional]  |
| **codeChallenge** | **string?** | PKCE code challenge: BASE64URL(SHA256(code_verifier)). Required for Authorization Code + PKCE flow | [optional]  |
| **codeChallengeMethod** | **string?** | PKCE challenge method. Only \&quot;S256\&quot; is supported | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **302** | Redirect to the authorization server |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="revoketoken"></a>
# **RevokeToken**
> void RevokeToken (string refreshToken)

Revokes a refresh token

Permanently invalidates a refresh token. After revocation the token cannot be used to obtain new access tokens. Revoke the refresh token when the user logs out or when you suspect the token has been compromised. 

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
    public class RevokeTokenExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.adguard-dns.io";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AuthenticationApi(httpClient, config, httpClientHandler);
            var refreshToken = "refreshToken_example";  // string | Refresh token to revoke

            try
            {
                // Revokes a refresh token
                apiInstance.RevokeToken(refreshToken);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AuthenticationApi.RevokeToken: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RevokeTokenWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Revokes a refresh token
    apiInstance.RevokeTokenWithHttpInfo(refreshToken);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AuthenticationApi.RevokeTokenWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **refreshToken** | **string** | Refresh token to revoke |  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Refresh token revoked |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

