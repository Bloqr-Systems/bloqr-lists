# PSAdGuardDNS.PSAdGuardDNS\Api.AuthenticationApi

All URIs are relative to *https://api.adguard-dns.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-AccessToken**](AuthenticationApi.md#Invoke-AccessToken) | **POST** /oapi/v1/oauth_token | Issues an access token
[**Invoke-Authorize**](AuthenticationApi.md#Invoke-Authorize) | **GET** /oapi/v1/oauth_authorize | Redirects to the authorization endpoint
[**Revoke-Token**](AuthenticationApi.md#Revoke-Token) | **POST** /oapi/v1/revoke_token | Revokes a refresh token


<a id="Invoke-AccessToken"></a>
# **Invoke-AccessToken**
> AccessTokenResponse Invoke-AccessToken<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GrantType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Code] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CodeVerifier] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MfaToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Password] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RedirectUri] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RefreshToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>

Issues an access token

Obtains an access token using one of three grant types:  **1. Password + optional 2FA** (`grant_type=password`): Provide `username` and `password`. If two-factor authentication is enabled on the account, also provide `mfa_token`.  **2. Refresh token** (`grant_type=refresh_token`): Provide `refresh_token` to exchange it for a new access token without re-entering credentials.  **3. Authorization Code + PKCE** (`grant_type=authorization_code`): Exchange an authorization code obtained via the `/oauth_authorize` endpoint. Provide `code`, `client_id`, `code_verifier`, and `redirect_uri`. 

### Example
```powershell
$GrantType = "MyGrantType" # String | OAuth2 grant type. Accepted values: """"password"""", """"refresh_token"""", """"authorization_code"""". Required for Authorization Code + PKCE flow.
$ClientId = "MyClientId" # String | OAuth2 client identifier (optional)
$Code = "MyCode" # String | Authorization code received from the authorization server (optional)
$CodeVerifier = "MyCodeVerifier" # String | PKCE code verifier (43-128 chars) (optional)
$MfaToken = "MyMfaToken" # String | Two-Factor authentication token (if enabled in account settings) (optional)
$Password = "MyPassword" # String | Account password (optional)
$RedirectUri = "MyRedirectUri" # String | Redirect URI used in the authorization request (optional)
$RefreshToken = "MyRefreshToken" # String | Refresh token (optional)
$Username = "MyUsername" # String | Account email (optional)

# Issues an access token
try {
    $Result = Invoke-AccessToken -GrantType $GrantType -ClientId $ClientId -Code $Code -CodeVerifier $CodeVerifier -MfaToken $MfaToken -Password $Password -RedirectUri $RedirectUri -RefreshToken $RefreshToken -Username $Username
} catch {
    Write-Host ("Exception occurred when calling Invoke-AccessToken: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GrantType** | **String**| OAuth2 grant type. Accepted values: &quot;&quot;&quot;&quot;password&quot;&quot;&quot;&quot;, &quot;&quot;&quot;&quot;refresh_token&quot;&quot;&quot;&quot;, &quot;&quot;&quot;&quot;authorization_code&quot;&quot;&quot;&quot;. Required for Authorization Code + PKCE flow. | 
 **ClientId** | **String**| OAuth2 client identifier | [optional] 
 **Code** | **String**| Authorization code received from the authorization server | [optional] 
 **CodeVerifier** | **String**| PKCE code verifier (43-128 chars) | [optional] 
 **MfaToken** | **String**| Two-Factor authentication token (if enabled in account settings) | [optional] 
 **Password** | **String**| Account password | [optional] 
 **RedirectUri** | **String**| Redirect URI used in the authorization request | [optional] 
 **RefreshToken** | **String**| Refresh token | [optional] 
 **Username** | **String**| Account email | [optional] 

### Return type

[**AccessTokenResponse**](AccessTokenResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json, */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-Authorize"></a>
# **Invoke-Authorize**
> void Invoke-Authorize<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResponseType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RedirectUri] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-State] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Aid] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Source] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CodeChallenge] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CodeChallengeMethod] <String><br>

Redirects to the authorization endpoint

Initiates an OAuth2 authorization flow by redirecting the user to the AdGuard authorization server.  Use `response_type=token` for the Implicit grant or `response_type=code` together with `code_challenge` and `code_challenge_method=S256` for the Authorization Code + PKCE flow.  On success the authorization server redirects back to `redirect_uri`. For the Implicit grant the access token is embedded in the URL fragment (`#access_token=...`). For the Authorization Code flow a one-time `code` is appended as a query parameter and must be exchanged for tokens via the `/oauth_token` endpoint. 

### Example
```powershell
$ClientId = "MyClientId" # String | OAuth2 client identifier
$ResponseType = "MyResponseType" # String | Type of grant. Use response_type=token for Implicit grant, response_type=code for Authorization Code + PKCE flow
$RedirectUri = "MyRedirectUri" # String | A successful response results in a redirect to this URL
$State = "MyState" # String | An opaque value, used for security purposes (optional)
$Aid = "MyAid" # String | Affiliate identifier (optional)
$Source = "MySource" # String | Affiliate source (optional)
$CodeChallenge = "MyCodeChallenge" # String | PKCE code challenge: BASE64URL(SHA256(code_verifier)). Required for Authorization Code + PKCE flow (optional)
$CodeChallengeMethod = "MyCodeChallengeMethod" # String | PKCE challenge method. Only ""S256"" is supported (optional)

# Redirects to the authorization endpoint
try {
    $Result = Invoke-Authorize -ClientId $ClientId -ResponseType $ResponseType -RedirectUri $RedirectUri -State $State -Aid $Aid -Source $Source -CodeChallenge $CodeChallenge -CodeChallengeMethod $CodeChallengeMethod
} catch {
    Write-Host ("Exception occurred when calling Invoke-Authorize: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ClientId** | **String**| OAuth2 client identifier | 
 **ResponseType** | **String**| Type of grant. Use response_type&#x3D;token for Implicit grant, response_type&#x3D;code for Authorization Code + PKCE flow | 
 **RedirectUri** | **String**| A successful response results in a redirect to this URL | 
 **State** | **String**| An opaque value, used for security purposes | [optional] 
 **Aid** | **String**| Affiliate identifier | [optional] 
 **Source** | **String**| Affiliate source | [optional] 
 **CodeChallenge** | **String**| PKCE code challenge: BASE64URL(SHA256(code_verifier)). Required for Authorization Code + PKCE flow | [optional] 
 **CodeChallengeMethod** | **String**| PKCE challenge method. Only &quot;&quot;S256&quot;&quot; is supported | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Revoke-Token"></a>
# **Revoke-Token**
> void Revoke-Token<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RefreshToken] <String><br>

Revokes a refresh token

Permanently invalidates a refresh token. After revocation the token cannot be used to obtain new access tokens. Revoke the refresh token when the user logs out or when you suspect the token has been compromised. 

### Example
```powershell
$RefreshToken = "MyRefreshToken" # String | Refresh token to revoke

# Revokes a refresh token
try {
    $Result = Revoke-Token -RefreshToken $RefreshToken
} catch {
    Write-Host ("Exception occurred when calling Revoke-Token: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RefreshToken** | **String**| Refresh token to revoke | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

