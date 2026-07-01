# AccessToken
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessToken** | **String** | The access token issued by the authorization server as described in RFC 6749 Section 1.4. | 
**ExpiresIn** | **Int32** | The lifetime in seconds of the access token as described in RFC 6749 Section 4.2.2. | [optional] 
**Jti** | **String** | Unique ID of the access_token. It is also a reserved JWT claim and provides a unique identifier for the JWT (JWT ID) as described in RFC 7519 Section 4.1.7. The value is a case-sensitive string. | [optional] 
**RefreshToken** | **String** | The refresh token issued by the authorization server to obtain a new access token when the current access token becomes invalid or expires as described in RFC 6749 Section 1.5. | [optional] 
**Scope** | **String** | The scope of the access token as described by RFC 6749 Section 3.3. | [optional] 
**TokenType** | **String** | The type of the token issued as described in RFC 6749 Section 7.1. Value is case insensitive. | 

## Examples

- Prepare the resource
```powershell
$AccessToken = Initialize-PpdmApiReferenceAccessToken  -AccessToken null `
 -ExpiresIn null `
 -Jti null `
 -RefreshToken null `
 -Scope null `
 -TokenType null
```

- Convert the resource to JSON
```powershell
$AccessToken | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

