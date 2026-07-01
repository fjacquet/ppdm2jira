# JiraApiReference.JiraApiReference\Api.IssueCustomFieldAssociationsApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Associations**](IssueCustomFieldAssociationsApi.md#New-Associations) | **PUT** /rest/api/3/field/association | Create associations
[**Remove-Associations**](IssueCustomFieldAssociationsApi.md#Remove-Associations) | **DELETE** /rest/api/3/field/association | Remove associations


<a id="New-Associations"></a>
# **New-Associations**
> AnyType New-Associations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FieldAssociationsRequest] <PSCustomObject><br>

Create associations

Associates fields with projects.  Fields will be associated with each issue type on the requested projects.  Fields will be associated with all projects that share the same field configuration which the provided projects are using. This means that while the field will be associated with the requested projects, it will also be associated with any other projects that share the same field configuration.  If a success response is returned it means that the field association has been created in any applicable contexts where it wasn't already present.  Up to 50 fields and up to 100 projects can be associated in a single request. If more fields or projects are provided a 400 response will be returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$AssociationContextObject = Initialize-AssociationContextObject -Identifier  -Type "MyType"
$FieldIdentifierObject = Initialize-FieldIdentifierObject -Identifier  -Type "MyType"
$FieldAssociationsRequest = Initialize-FieldAssociationsRequest -AssociationContexts $AssociationContextObject -Fields $FieldIdentifierObject # FieldAssociationsRequest | Payload containing the fields to associate and the projects to associate them to.

# Create associations
try {
    $Result = New-Associations -FieldAssociationsRequest $FieldAssociationsRequest
} catch {
    Write-Host ("Exception occurred when calling New-Associations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FieldAssociationsRequest** | [**FieldAssociationsRequest**](FieldAssociationsRequest.md)| Payload containing the fields to associate and the projects to associate them to. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-Associations"></a>
# **Remove-Associations**
> AnyType Remove-Associations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FieldAssociationsRequest] <PSCustomObject><br>

Remove associations

Unassociates a set of fields with a project and issue type context.  Fields will be unassociated with all projects/issue types that share the same field configuration which the provided project and issue types are using. This means that while the field will be unassociated with the provided project and issue types, it will also be unassociated with any other projects and issue types that share the same field configuration.  If a success response is returned it means that the field association has been removed in any applicable contexts where it was present.  Up to 50 fields and up to 100 projects and issue types can be unassociated in a single request. If more fields or projects are provided a 400 response will be returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$AssociationContextObject = Initialize-AssociationContextObject -Identifier  -Type "MyType"
$FieldIdentifierObject = Initialize-FieldIdentifierObject -Identifier  -Type "MyType"
$FieldAssociationsRequest = Initialize-FieldAssociationsRequest -AssociationContexts $AssociationContextObject -Fields $FieldIdentifierObject # FieldAssociationsRequest | Payload containing the fields to uassociate and the projects and issue types to unassociate them to.

# Remove associations
try {
    $Result = Remove-Associations -FieldAssociationsRequest $FieldAssociationsRequest
} catch {
    Write-Host ("Exception occurred when calling Remove-Associations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FieldAssociationsRequest** | [**FieldAssociationsRequest**](FieldAssociationsRequest.md)| Payload containing the fields to uassociate and the projects and issue types to unassociate them to. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

