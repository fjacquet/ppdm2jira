# RefreshAccessTokenRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GrantType** | **String** | A type of an authorization grant that is a credential that the client uses to obtain an access token as described by RFC 6749 Section 1.3 | 
**RefreshToken** | **String** | The refresh token that is issued by the authorization server to obtain a new access token when the current access token becomes invalid or expires. | [optional] 
**Scope** | **String** | The scope of the access token as described by RFC 6749 Section 3.3 | [optional] 

## Examples

- Prepare the resource
```powershell
$RefreshAccessTokenRequest = Initialize-PpdmApiReferenceRefreshAccessTokenRequest  -GrantType null `
 -RefreshToken null `
 -Scope null
```

- Convert the resource to JSON
```powershell
$RefreshAccessTokenRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

