# PpdmApiReference.PpdmApiReference\Api.UserSecurityManagementApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-IdentitySource**](UserSecurityManagementApi.md#New-IdentitySource) | **POST** /api/v2/identity-sources | Create an identity source
[**New-User**](UserSecurityManagementApi.md#New-User) | **POST** /api/v2/users | Create a local system user
[**New-UserGroup**](UserSecurityManagementApi.md#New-UserGroup) | **POST** /api/v2/user-groups | Create a user group
[**Invoke-DeleteIdentitySource**](UserSecurityManagementApi.md#Invoke-DeleteIdentitySource) | **DELETE** /api/v2/identity-sources/{IdSourceId} | Delete an identity source by ID
[**Invoke-DeleteUser**](UserSecurityManagementApi.md#Invoke-DeleteUser) | **DELETE** /api/v2/users/{userId} | Delete a local system user by ID
[**Invoke-DeleteUserGroup**](UserSecurityManagementApi.md#Invoke-DeleteUserGroup) | **DELETE** /api/v2/user-groups/{userGroupId} | Delete a user group by ID
[**Get-CommonSettingsLocalUserSettings**](UserSecurityManagementApi.md#Get-CommonSettingsLocalUserSettings) | **GET** /api/v2/common-settings/LOCAL_USER_SETTING | Get the local user account settings
[**Get-IdSourceGroupUsers**](UserSecurityManagementApi.md#Get-IdSourceGroupUsers) | **GET** /api/v2/identity-sources/{IdSourceId}/groups/{groupName}/users | Get users belonging to an identity source group
[**Get-IdSourceGroups**](UserSecurityManagementApi.md#Get-IdSourceGroups) | **GET** /api/v2/identity-sources/{IdSourceId}/groups | Get groups belonging to the identity source
[**Get-IdentitySource**](UserSecurityManagementApi.md#Get-IdentitySource) | **GET** /api/v2/identity-sources/{IdSourceId} | Get an identity source by ID
[**Get-IdentitySources**](UserSecurityManagementApi.md#Get-IdentitySources) | **GET** /api/v2/identity-sources | Get all identity sources
[**Get-Role**](UserSecurityManagementApi.md#Get-Role) | **GET** /api/v2/roles/{roleId} | Get a role by ID
[**Get-Roles**](UserSecurityManagementApi.md#Get-Roles) | **GET** /api/v2/roles | Get all roles
[**Get-User**](UserSecurityManagementApi.md#Get-User) | **GET** /api/v2/users/{userId} | Get a local system user by ID
[**Get-UserGroup**](UserSecurityManagementApi.md#Get-UserGroup) | **GET** /api/v2/user-groups/{userGroupId} | Get a user group by ID
[**Get-UserGroups**](UserSecurityManagementApi.md#Get-UserGroups) | **GET** /api/v2/user-groups | Get all user groups
[**Get-Users**](UserSecurityManagementApi.md#Get-Users) | **GET** /api/v2/users | Get all the local system users
[**Update-CommonSettingsLocalUserSettings**](UserSecurityManagementApi.md#Update-CommonSettingsLocalUserSettings) | **PUT** /api/v2/common-settings/LOCAL_USER_SETTING | Update the local user account settings
[**Update-IdentitySource**](UserSecurityManagementApi.md#Update-IdentitySource) | **PUT** /api/v2/identity-sources/{IdSourceId} | Update an identity source by ID
[**Update-User**](UserSecurityManagementApi.md#Update-User) | **PUT** /api/v2/users/{userId} | Update a local system user by ID
[**Update-UserGroup**](UserSecurityManagementApi.md#Update-UserGroup) | **PUT** /api/v2/user-groups/{userGroupId} | Update a user group by ID
[**Invoke-V2CreateActiveDirectoryIdentityProvider**](UserSecurityManagementApi.md#Invoke-V2CreateActiveDirectoryIdentityProvider) | **POST** /api/v2/active-directory-identity-providers | Create an instance of Active Directory identity provider for another set of connectivity parameters
[**Invoke-V2CreateIdentityAccessProvision**](UserSecurityManagementApi.md#Invoke-V2CreateIdentityAccessProvision) | **POST** /api/v2/identity-access-provisions | Add a new access provision, unique for a subject at an identity provider
[**Invoke-V2CreateLdapIdentityProvider**](UserSecurityManagementApi.md#Invoke-V2CreateLdapIdentityProvider) | **POST** /api/v2/ldap-identity-providers | Create an instance of Lightweight Directory Access Protocol (LDAP) identity provider for another set of connectivity parameters
[**Invoke-V2CreateLocalAccount**](UserSecurityManagementApi.md#Invoke-V2CreateLocalAccount) | **POST** /api/v2/local-identity-providers/{locator}/accounts | Create a local account
[**Invoke-V2CreateLocalIdentityProviderDefaultAccount**](UserSecurityManagementApi.md#Invoke-V2CreateLocalIdentityProviderDefaultAccount) | **POST** /api/v2/local-identity-providers/default/accounts | Create a local account
[**Invoke-V2DeleteActiveDirectoryIdentityProvider**](UserSecurityManagementApi.md#Invoke-V2DeleteActiveDirectoryIdentityProvider) | **DELETE** /api/v2/active-directory-identity-providers/{locator} | Remove the Active Directory identity provider
[**Invoke-V2DeleteIdentityAccessProvision**](UserSecurityManagementApi.md#Invoke-V2DeleteIdentityAccessProvision) | **DELETE** /api/v2/identity-access-provisions/{locator} | Delete an access provision for the specified locator
[**Invoke-V2DeleteIdentityProvider**](UserSecurityManagementApi.md#Invoke-V2DeleteIdentityProvider) | **DELETE** /api/v2/identity-providers/{locator} | Delete an identity provider
[**Invoke-V2DeleteLdapIdentityProvider**](UserSecurityManagementApi.md#Invoke-V2DeleteLdapIdentityProvider) | **DELETE** /api/v2/ldap-identity-providers/{locator} | Remove the Lightweight Directory Access Protocol (LDAP) identity provider
[**Invoke-V2DeleteLocalIdentityAuthEntry**](UserSecurityManagementApi.md#Invoke-V2DeleteLocalIdentityAuthEntry) | **DELETE** /api/v2/local-identity-providers/{locator}/auth-entries/{auth-entry-locator} | Delete the local identity provider&#39;s authentication entry
[**Invoke-V2DeleteLocalIdentityDefaultAuthEntry**](UserSecurityManagementApi.md#Invoke-V2DeleteLocalIdentityDefaultAuthEntry) | **DELETE** /api/v2/local-identity-providers/default/auth-entries/{locator} | Delete the local identity provider&#39;s authentication entry
[**Invoke-V2DeleteLocalIdentityProviderDefaultAccount**](UserSecurityManagementApi.md#Invoke-V2DeleteLocalIdentityProviderDefaultAccount) | **DELETE** /api/v2/local-identity-providers/default/accounts/{account-locator} | Delete a specified account
[**Invoke-V2DeleteLocalIdentityProviderLocatorAccount**](UserSecurityManagementApi.md#Invoke-V2DeleteLocalIdentityProviderLocatorAccount) | **DELETE** /api/v2/local-identity-providers/{locator}/accounts/{account-locator} | Delete a specified account
[**Invoke-V2GetActiveDirectoryIdentityProvider**](UserSecurityManagementApi.md#Invoke-V2GetActiveDirectoryIdentityProvider) | **GET** /api/v2/active-directory-identity-providers/{locator} | Get the Active Directory identity provider with the locator
[**Invoke-V2GetActiveDirectoryIdentityProviderAccounts**](UserSecurityManagementApi.md#Invoke-V2GetActiveDirectoryIdentityProviderAccounts) | **GET** /api/v2/active-directory-identity-providers/{locator}/accounts | Get a list of Active Directory user accounts
[**Invoke-V2GetActiveDirectoryIdentityProviderGroup**](UserSecurityManagementApi.md#Invoke-V2GetActiveDirectoryIdentityProviderGroup) | **GET** /api/v2/active-directory-identity-providers/{locator}/groups/{group-locator} | Get group information for the specified group locator
[**Invoke-V2GetActiveDirectoryIdentityProviderGroups**](UserSecurityManagementApi.md#Invoke-V2GetActiveDirectoryIdentityProviderGroups) | **GET** /api/v2/active-directory-identity-providers/{locator}/groups | Get a list of Active Directory groups
[**Invoke-V2GetActiveDirectoryIdentityProviders**](UserSecurityManagementApi.md#Invoke-V2GetActiveDirectoryIdentityProviders) | **GET** /api/v2/active-directory-identity-providers | Get a list of all available Active Directory identity providers
[**Invoke-V2GetActiveDirectoryProviderAccount**](UserSecurityManagementApi.md#Invoke-V2GetActiveDirectoryProviderAccount) | **GET** /api/v2/active-directory-identity-providers/{locator}/accounts/{account-locator} | Get user account information for the specified account locator
[**Invoke-V2GetAdDefaultConfig**](UserSecurityManagementApi.md#Invoke-V2GetAdDefaultConfig) | **GET** /api/v2/active-directory-identity-providers/default-config | Active Directory Identity Provider default configuration
[**Invoke-V2GetAuthEntries**](UserSecurityManagementApi.md#Invoke-V2GetAuthEntries) | **GET** /api/v2/local-identity-providers/{locator}/auth-entries | Get the local identity provider&#39;s authentication entries
[**Invoke-V2GetAuthEntry**](UserSecurityManagementApi.md#Invoke-V2GetAuthEntry) | **GET** /api/v2/local-identity-providers/{locator}/auth-entries/{auth-entry-locator} | Get a local identity provider&#39;s authentication entry
[**Invoke-V2GetIdentityAccessProvision**](UserSecurityManagementApi.md#Invoke-V2GetIdentityAccessProvision) | **GET** /api/v2/identity-access-provisions/{locator} | Get an identity access provision
[**Invoke-V2GetIdentityAccessProvisions**](UserSecurityManagementApi.md#Invoke-V2GetIdentityAccessProvisions) | **GET** /api/v2/identity-access-provisions | Get identity access provisions
[**Invoke-V2GetIdentityMetric**](UserSecurityManagementApi.md#Invoke-V2GetIdentityMetric) | **GET** /api/v2/identity-metrics/{locator} | Get identity metric
[**Invoke-V2GetIdentityMetrics**](UserSecurityManagementApi.md#Invoke-V2GetIdentityMetrics) | **GET** /api/v2/identity-metrics | Get identity metrics
[**Invoke-V2GetIdentityProvider**](UserSecurityManagementApi.md#Invoke-V2GetIdentityProvider) | **GET** /api/v2/identity-providers/{locator} | Get an identity provider for the locator
[**Invoke-V2GetIdentityProviderAccount**](UserSecurityManagementApi.md#Invoke-V2GetIdentityProviderAccount) | **GET** /api/v2/identity-providers/{locator}/accounts/{name} | Get an account for the specified account name
[**Invoke-V2GetIdentityProviderAccounts**](UserSecurityManagementApi.md#Invoke-V2GetIdentityProviderAccounts) | **GET** /api/v2/identity-providers/{locator}/accounts | Get a collection of identity provider accounts
[**Invoke-V2GetIdentityProviderGroup**](UserSecurityManagementApi.md#Invoke-V2GetIdentityProviderGroup) | **GET** /api/v2/identity-providers/{locator}/groups/{name} | Get a group for the specified group name
[**Invoke-V2GetIdentityProviderGroups**](UserSecurityManagementApi.md#Invoke-V2GetIdentityProviderGroups) | **GET** /api/v2/identity-providers/{locator}/groups | Get a collection of identity provider groups
[**Invoke-V2GetIdentityProviders**](UserSecurityManagementApi.md#Invoke-V2GetIdentityProviders) | **GET** /api/v2/identity-providers | Get a collection of identity providers
[**Invoke-V2GetLdapDefaultConfig**](UserSecurityManagementApi.md#Invoke-V2GetLdapDefaultConfig) | **GET** /api/v2/ldap-identity-providers/default-config | Lightweight Directory Access Protocol (LDAP) identity provider Default Configuration
[**Invoke-V2GetLdapIdentityProvider**](UserSecurityManagementApi.md#Invoke-V2GetLdapIdentityProvider) | **GET** /api/v2/ldap-identity-providers/{locator} | Get the Lightweight Directory Access Protocol (LDAP) identity provider for the locator
[**Invoke-V2GetLdapIdentityProviderAccount**](UserSecurityManagementApi.md#Invoke-V2GetLdapIdentityProviderAccount) | **GET** /api/v2/ldap-identity-providers/{locator}/accounts/{account-locator} | Get user account information for the specified account locator
[**Invoke-V2GetLdapIdentityProviderAccounts**](UserSecurityManagementApi.md#Invoke-V2GetLdapIdentityProviderAccounts) | **GET** /api/v2/ldap-identity-providers/{locator}/accounts | Get a list of LDAP user accounts
[**Invoke-V2GetLdapIdentityProviderGroup**](UserSecurityManagementApi.md#Invoke-V2GetLdapIdentityProviderGroup) | **GET** /api/v2/ldap-identity-providers/{locator}/groups/{group-locator} | Get group information for the specified group locator
[**Invoke-V2GetLdapIdentityProviderGroups**](UserSecurityManagementApi.md#Invoke-V2GetLdapIdentityProviderGroups) | **GET** /api/v2/ldap-identity-providers/{locator}/groups | Get a list of LDAP groups
[**Invoke-V2GetLdapIdentityProviders**](UserSecurityManagementApi.md#Invoke-V2GetLdapIdentityProviders) | **GET** /api/v2/ldap-identity-providers | Get a list of all available Lightweight Directory Access Protocol (LDAP) identity providers
[**Invoke-V2GetLocalDefaultIdentityProvider**](UserSecurityManagementApi.md#Invoke-V2GetLocalDefaultIdentityProvider) | **GET** /api/v2/local-identity-providers/default | Get the default local identity provider
[**Invoke-V2GetLocalIdentityProvider**](UserSecurityManagementApi.md#Invoke-V2GetLocalIdentityProvider) | **GET** /api/v2/local-identity-providers/{locator} | Get a local identity provider by locator
[**Invoke-V2GetLocalIdentityProviderDefaultAccount**](UserSecurityManagementApi.md#Invoke-V2GetLocalIdentityProviderDefaultAccount) | **GET** /api/v2/local-identity-providers/default/accounts/{account-locator} | Get a specified account
[**Invoke-V2GetLocalIdentityProviderDefaultAccounts**](UserSecurityManagementApi.md#Invoke-V2GetLocalIdentityProviderDefaultAccounts) | **GET** /api/v2/local-identity-providers/default/accounts | Get a page of Local Identity Provider Accounts
[**Invoke-V2GetLocalIdentityProviderDefaultAuthEntries**](UserSecurityManagementApi.md#Invoke-V2GetLocalIdentityProviderDefaultAuthEntries) | **GET** /api/v2/local-identity-providers/default/auth-entries | Get the default local identity provider&#39;s authentication entries
[**Invoke-V2GetLocalIdentityProviderDefaultAuthEntry**](UserSecurityManagementApi.md#Invoke-V2GetLocalIdentityProviderDefaultAuthEntry) | **GET** /api/v2/local-identity-providers/default/auth-entries/{locator} | Get a default local identity provider&#39;s authentication entry
[**Invoke-V2GetLocalIdentityProviderLocatorAccount**](UserSecurityManagementApi.md#Invoke-V2GetLocalIdentityProviderLocatorAccount) | **GET** /api/v2/local-identity-providers/{locator}/accounts/{account-locator} | Get a specified account
[**Invoke-V2GetLocalIdentityProviderLocatorAccounts**](UserSecurityManagementApi.md#Invoke-V2GetLocalIdentityProviderLocatorAccounts) | **GET** /api/v2/local-identity-providers/{locator}/accounts | Get a page of Local Identity Provider accounts
[**Invoke-V2GetLocalIdentityProviders**](UserSecurityManagementApi.md#Invoke-V2GetLocalIdentityProviders) | **GET** /api/v2/local-identity-providers | Get local identity providers
[**Invoke-V2PatchActiveDirectoryIdentityProvider**](UserSecurityManagementApi.md#Invoke-V2PatchActiveDirectoryIdentityProvider) | **PATCH** /api/v2/active-directory-identity-providers/{locator} | Modify the Active Directory configuration parameters
[**Invoke-V2PatchIdentityAccessProvision**](UserSecurityManagementApi.md#Invoke-V2PatchIdentityAccessProvision) | **PATCH** /api/v2/identity-access-provisions/{locator} | Replace access related data for the specified locator (changing subject or identity-provider not allowed)
[**Invoke-V2PatchIdentityProvider**](UserSecurityManagementApi.md#Invoke-V2PatchIdentityProvider) | **PATCH** /api/v2/identity-providers/{locator} | Patch an identity provider
[**Invoke-V2PatchLdapIdentityProvider**](UserSecurityManagementApi.md#Invoke-V2PatchLdapIdentityProvider) | **PATCH** /api/v2/ldap-identity-providers/{locator} | Modify the LDAP configuration parameters
[**Invoke-V2PatchLocalIdentityAuthEntry**](UserSecurityManagementApi.md#Invoke-V2PatchLocalIdentityAuthEntry) | **PATCH** /api/v2/local-identity-providers/{locator}/auth-entries/{auth-entry-locator} | Update a local identity provider authentication entry
[**Invoke-V2PatchLocalIdentityDefaultAuthEntry**](UserSecurityManagementApi.md#Invoke-V2PatchLocalIdentityDefaultAuthEntry) | **PATCH** /api/v2/local-identity-providers/default/auth-entries/{locator} | Update a local identity provider authentication entry
[**Invoke-V2PatchLocalIdentityProviderDefaultAccount**](UserSecurityManagementApi.md#Invoke-V2PatchLocalIdentityProviderDefaultAccount) | **PATCH** /api/v2/local-identity-providers/default/accounts/{account-locator} | Modify a specified account
[**Invoke-V2PatchLocalIdentityProviderLocatorAccount**](UserSecurityManagementApi.md#Invoke-V2PatchLocalIdentityProviderLocatorAccount) | **PATCH** /api/v2/local-identity-providers/{locator}/accounts/{account-locator} | Modify a specified account
[**Invoke-V2PutLocalIdenityProviderDefaultAccount**](UserSecurityManagementApi.md#Invoke-V2PutLocalIdenityProviderDefaultAccount) | **PUT** /api/v2/local-identity-providers/default/accounts/{account-locator} | Replace a specified account
[**Invoke-V2PutLocalIdenityProviderLocatorAccount**](UserSecurityManagementApi.md#Invoke-V2PutLocalIdenityProviderLocatorAccount) | **PUT** /api/v2/local-identity-providers/{locator}/accounts/{account-locator} | Replace a specified account
[**Invoke-V2UpdateAuthEntry**](UserSecurityManagementApi.md#Invoke-V2UpdateAuthEntry) | **PUT** /api/v2/local-identity-providers/{locator}/auth-entries/{auth-entry-locator} | Update a local identity provider authentication entry
[**Invoke-V2UpdateLocalIdentityProviderDefaultAuthEntry**](UserSecurityManagementApi.md#Invoke-V2UpdateLocalIdentityProviderDefaultAuthEntry) | **PUT** /api/v2/local-identity-providers/default/auth-entries/{locator} | Update a local identity provider authentication entry


<a id="New-IdentitySource"></a>
# **New-IdentitySource**
> IdentitySource New-IdentitySource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ValidateOnly] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentitySource] <PSCustomObject><br>

Create an identity source

This API or field has been deprecated. Replacement APIs are /api/v3/ldap-identity-providers and /api/v3/active-directory-identity-providers Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$ValidateOnly = $true # Boolean | Checks the connection of the identity source with the provided credentials. (optional) (default to $false)
$IdentitySource = Initialize-IdentitySource -Base "MyBase" -ConfigPassword "MyConfigPassword" -ConfigUser "MyConfigUser" -CreatedDate (Get-Date) -Description "MyDescription" -Enabled $false -GroupMemberAttribute "MyGroupMemberAttribute" -GroupNameAttribute "MyGroupNameAttribute" -GroupObjectTypeName "MyGroupObjectTypeName" -GroupSearchPath "MyGroupSearchPath" -HighAvailabilityEnabled $false -Id "MyId" -Port "MyPort" -ServerAddress "MyServerAddress" -ServerType "ldap" -UserIdAttribute "MyUserIdAttribute" -UserObjectTypeName "MyUserObjectTypeName" -UserSearchPath "MyUserSearchPath" # IdentitySource |  (optional)

# Create an identity source
try {
    $Result = New-IdentitySource -ValidateOnly $ValidateOnly -IdentitySource $IdentitySource
} catch {
    Write-Host ("Exception occurred when calling New-IdentitySource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ValidateOnly** | **Boolean**| Checks the connection of the identity source with the provided credentials. | [optional] [default to $false]
 **IdentitySource** | [**IdentitySource**](IdentitySource.md)|  | [optional] 

### Return type

[**IdentitySource**](IdentitySource.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-User"></a>
# **New-User**
> User New-User<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-User] <PSCustomObject><br>

Create a local system user

This API or field has been deprecated. Replacement API is /api/v3/identity-access-provisions Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$User = Initialize-User -CreatedDate (Get-Date) -EmailAddress "MyEmailAddress" -FirstName "MyFirstName" -ForcePasswordChange $false -Id "MyId" -LastName "MyLastName" -Password "MyPassword" -RoleId "MyRoleId" -Username "MyUsername" # User |  (optional)

# Create a local system user
try {
    $Result = New-User -User $User
} catch {
    Write-Host ("Exception occurred when calling New-User: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **User** | [**User**](User.md)|  | [optional] 

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-UserGroup"></a>
# **New-UserGroup**
> UserGroup New-UserGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserGroup] <PSCustomObject><br>

Create a user group

This API or field has been deprecated. Replacement API is /api/v3/identity-access-provisions Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$IdentitySourceGroupsMapping = Initialize-IdentitySourceGroupsMapping -Groups "MyGroups" -IdentitySourceId "MyIdentitySourceId"
$UserGroup = Initialize-UserGroup -CreatedDate (Get-Date) -Id "MyId" -IdentitySourceGroups $IdentitySourceGroupsMapping -Name "MyName" -RoleId "MyRoleId" # UserGroup |  (optional)

# Create a user group
try {
    $Result = New-UserGroup -UserGroup $UserGroup
} catch {
    Write-Host ("Exception occurred when calling New-UserGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserGroup** | [**UserGroup**](UserGroup.md)|  | [optional] 

### Return type

[**UserGroup**](UserGroup.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteIdentitySource"></a>
# **Invoke-DeleteIdentitySource**
> void Invoke-DeleteIdentitySource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdSourceId] <String><br>

Delete an identity source by ID

This API or field has been deprecated. Replacement APIs are /api/v3/ldap-identity-providers and /api/v3/active-directory-identity-providers Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$IdSourceId = "MyIdSourceId" # String | Identity source ID.

# Delete an identity source by ID
try {
    $Result = Invoke-DeleteIdentitySource -IdSourceId $IdSourceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteIdentitySource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdSourceId** | **String**| Identity source ID. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteUser"></a>
# **Invoke-DeleteUser**
> void Invoke-DeleteUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Delete a local system user by ID

This API or field has been deprecated. Replacement API is /api/v3/identity-access-provisions Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$UserId = "MyUserId" # String | User ID.

# Delete a local system user by ID
try {
    $Result = Invoke-DeleteUser -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**| User ID. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteUserGroup"></a>
# **Invoke-DeleteUserGroup**
> void Invoke-DeleteUserGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserGroupId] <String><br>

Delete a user group by ID

This API or field has been deprecated. Replacement API is /api/v3/identity-access-provisions Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$UserGroupId = "MyUserGroupId" # String | User group ID.

# Delete a user group by ID
try {
    $Result = Invoke-DeleteUserGroup -UserGroupId $UserGroupId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteUserGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserGroupId** | **String**| User group ID. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CommonSettingsLocalUserSettings"></a>
# **Get-CommonSettingsLocalUserSettings**
> CommonSetting Get-CommonSettingsLocalUserSettings<br>

Get the local user account settings

This API or field has been deprecated. Get the local user account settings. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get the local user account settings
try {
    $Result = Get-CommonSettingsLocalUserSettings
} catch {
    Write-Host ("Exception occurred when calling Get-CommonSettingsLocalUserSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CommonSetting**](CommonSetting.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-IdSourceGroupUsers"></a>
# **Get-IdSourceGroupUsers**
> IdentitySourceGroupUsers Get-IdSourceGroupUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdSourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>

Get users belonging to an identity source group

This API or field has been deprecated. Replacement APIs are /api/v3/ldap-identity-providers and /api/v3/active-directory-identity-providers Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$IdSourceId = "MyIdSourceId" # String | The ID of the identity source.
$GroupName = "MyGroupName" # String | The group name of the identity source.
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)

# Get users belonging to an identity source group
try {
    $Result = Get-IdSourceGroupUsers -IdSourceId $IdSourceId -GroupName $GroupName -Filter $Filter
} catch {
    Write-Host ("Exception occurred when calling Get-IdSourceGroupUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdSourceId** | **String**| The ID of the identity source. | 
 **GroupName** | **String**| The group name of the identity source. | 
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 

### Return type

[**IdentitySourceGroupUsers**](IdentitySourceGroupUsers.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-IdSourceGroups"></a>
# **Get-IdSourceGroups**
> IdentitySourceGroups Get-IdSourceGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdSourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Get groups belonging to the identity source

This API or field has been deprecated. Replacement APIs are /api/v3/ldap-identity-providers and /api/v3/active-directory-identity-providers Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$IdSourceId = "MyIdSourceId" # String | Identity source ID.
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Limit = 56 # Int32 | Number of groups to return. (optional)

# Get groups belonging to the identity source
try {
    $Result = Get-IdSourceGroups -IdSourceId $IdSourceId -Filter $Filter -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Get-IdSourceGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdSourceId** | **String**| Identity source ID. | 
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Limit** | **Int32**| Number of groups to return. | [optional] 

### Return type

[**IdentitySourceGroups**](IdentitySourceGroups.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-IdentitySource"></a>
# **Get-IdentitySource**
> IdentitySource Get-IdentitySource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdSourceId] <String><br>

Get an identity source by ID

This API or field has been deprecated. Replacement APIs are /api/v3/ldap-identity-providers and /api/v3/active-directory-identity-providers Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$IdSourceId = "MyIdSourceId" # String | Identity source ID.

# Get an identity source by ID
try {
    $Result = Get-IdentitySource -IdSourceId $IdSourceId
} catch {
    Write-Host ("Exception occurred when calling Get-IdentitySource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdSourceId** | **String**| Identity source ID. | 

### Return type

[**IdentitySource**](IdentitySource.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-IdentitySources"></a>
# **Get-IdentitySources**
> IdentitySources Get-IdentitySources<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all identity sources

This API or field has been deprecated. Replacement APIs are /api/v3/ldap-identity-providers and /api/v3/active-directory-identity-providers Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Security Administrator  > This endpoint supports pagination with types: random 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all identity sources
try {
    $Result = Get-IdentitySources -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-IdentitySources: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 

### Return type

[**IdentitySources**](IdentitySources.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Role"></a>
# **Get-Role**
> Role Get-Role<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>

Get a role by ID

Retrieves a role by ID. The role information contains the role description and role privileges. Each local user is assigned a role. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$RoleId = "MyRoleId" # String | Role ID.

# Get a role by ID
try {
    $Result = Get-Role -RoleId $RoleId
} catch {
    Write-Host ("Exception occurred when calling Get-Role: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleId** | **String**| Role ID. | 

### Return type

[**Role**](Role.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Roles"></a>
# **Get-Roles**
> Roles Get-Roles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all roles

Retrieves the list of all the assignable system roles and their descriptions. This list contains information about the role privileges. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Security Administrator  > This endpoint supports pagination with types: random 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all roles
try {
    $Result = Get-Roles -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-Roles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 

### Return type

[**Roles**](Roles.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-User"></a>
# **Get-User**
> User Get-User<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Get a local system user by ID

This API or field has been deprecated. Replacement API is /api/v3/identity-access-provisions Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$UserId = "MyUserId" # String | User ID.

# Get a local system user by ID
try {
    $Result = Get-User -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Get-User: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**| User ID. | 

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-UserGroup"></a>
# **Get-UserGroup**
> UserGroup Get-UserGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserGroupId] <String><br>

Get a user group by ID

This API or field has been deprecated. Replacement API is /api/v3/identity-access-provisions Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$UserGroupId = "MyUserGroupId" # String | User group ID.

# Get a user group by ID
try {
    $Result = Get-UserGroup -UserGroupId $UserGroupId
} catch {
    Write-Host ("Exception occurred when calling Get-UserGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserGroupId** | **String**| User group ID. | 

### Return type

[**UserGroup**](UserGroup.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-UserGroups"></a>
# **Get-UserGroups**
> UserGroups Get-UserGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Role] <String><br>

Get all user groups

This API or field has been deprecated. Replacement API is /api/v3/identity-access-provisions Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Security Administrator  > This endpoint supports pagination with types: random 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$Role = "MyRole" # String | Filter the user groups by role ID or role name. (optional)

# Get all user groups
try {
    $Result = Get-UserGroups -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -Role $Role
} catch {
    Write-Host ("Exception occurred when calling Get-UserGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **Role** | **String**| Filter the user groups by role ID or role name. | [optional] 

### Return type

[**UserGroups**](UserGroups.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Users"></a>
# **Get-Users**
> Users Get-Users<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Role] <String><br>

Get all the local system users

This API or field has been deprecated. Replacement API is /api/v3/identity-access-provisions Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Security Administrator  > This endpoint supports pagination with types: random 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$Role = "MyRole" # String | Filters the user by role ID or role name. (optional)

# Get all the local system users
try {
    $Result = Get-Users -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -Role $Role
} catch {
    Write-Host ("Exception occurred when calling Get-Users: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **Role** | **String**| Filters the user by role ID or role name. | [optional] 

### Return type

[**Users**](Users.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-CommonSettingsLocalUserSettings"></a>
# **Update-CommonSettingsLocalUserSettings**
> CommonSetting Update-CommonSettingsLocalUserSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CommonSetting] <PSCustomObject><br>

Update the local user account settings

This API or field has been deprecated. Update the local user account settings. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CommonSettingProperty = Initialize-CommonSettingProperty -MaxValue "MyMaxValue" -MinValue "MyMinValue" -Name "MyName" -Type "MyType" -Value "MyValue"
$CommonSetting = Initialize-CommonSetting -Id "MyId" -Properties $CommonSettingProperty # CommonSetting |  (optional)

# Update the local user account settings
try {
    $Result = Update-CommonSettingsLocalUserSettings -CommonSetting $CommonSetting
} catch {
    Write-Host ("Exception occurred when calling Update-CommonSettingsLocalUserSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CommonSetting** | [**CommonSetting**](CommonSetting.md)|  | [optional] 

### Return type

[**CommonSetting**](CommonSetting.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-IdentitySource"></a>
# **Update-IdentitySource**
> IdentitySource Update-IdentitySource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdSourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ValidateOnly] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentitySource] <PSCustomObject><br>

Update an identity source by ID

This API or field has been deprecated. Replacement APIs are /api/v3/ldap-identity-providers and /api/v3/active-directory-identity-providers Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$IdSourceId = "MyIdSourceId" # String | Identity source ID.
$ValidateOnly = $true # Boolean | Checks the connection of the identity source with the provided credentials. (optional)
$IdentitySource = Initialize-IdentitySource -Base "MyBase" -ConfigPassword "MyConfigPassword" -ConfigUser "MyConfigUser" -CreatedDate (Get-Date) -Description "MyDescription" -Enabled $false -GroupMemberAttribute "MyGroupMemberAttribute" -GroupNameAttribute "MyGroupNameAttribute" -GroupObjectTypeName "MyGroupObjectTypeName" -GroupSearchPath "MyGroupSearchPath" -HighAvailabilityEnabled $false -Id "MyId" -Port "MyPort" -ServerAddress "MyServerAddress" -ServerType "ldap" -UserIdAttribute "MyUserIdAttribute" -UserObjectTypeName "MyUserObjectTypeName" -UserSearchPath "MyUserSearchPath" # IdentitySource |  (optional)

# Update an identity source by ID
try {
    $Result = Update-IdentitySource -IdSourceId $IdSourceId -ValidateOnly $ValidateOnly -IdentitySource $IdentitySource
} catch {
    Write-Host ("Exception occurred when calling Update-IdentitySource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdSourceId** | **String**| Identity source ID. | 
 **ValidateOnly** | **Boolean**| Checks the connection of the identity source with the provided credentials. | [optional] 
 **IdentitySource** | [**IdentitySource**](IdentitySource.md)|  | [optional] 

### Return type

[**IdentitySource**](IdentitySource.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-User"></a>
# **Update-User**
> User Update-User<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XAuthPassword] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-User] <PSCustomObject><br>

Update a local system user by ID

This API or field has been deprecated. Replacement API is /api/v3/identity-access-provisions Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$UserId = "MyUserId" # String | User ID.
$XAuthPassword = "MyXAuthPassword" # String | Logged in user password to modify sensitive data.
$User = Initialize-User -CreatedDate (Get-Date) -EmailAddress "MyEmailAddress" -FirstName "MyFirstName" -ForcePasswordChange $false -Id "MyId" -LastName "MyLastName" -Password "MyPassword" -RoleId "MyRoleId" -Username "MyUsername" # User |  (optional)

# Update a local system user by ID
try {
    $Result = Update-User -UserId $UserId -XAuthPassword $XAuthPassword -User $User
} catch {
    Write-Host ("Exception occurred when calling Update-User: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**| User ID. | 
 **XAuthPassword** | **String**| Logged in user password to modify sensitive data. | 
 **User** | [**User**](User.md)|  | [optional] 

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-UserGroup"></a>
# **Update-UserGroup**
> UserGroup Update-UserGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserGroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserGroup] <PSCustomObject><br>

Update a user group by ID

This API or field has been deprecated. Replacement API is /api/v3/identity-access-provisions Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$UserGroupId = "MyUserGroupId" # String | User group ID.
$IdentitySourceGroupsMapping = Initialize-IdentitySourceGroupsMapping -Groups "MyGroups" -IdentitySourceId "MyIdentitySourceId"
$UserGroup = Initialize-UserGroup -CreatedDate (Get-Date) -Id "MyId" -IdentitySourceGroups $IdentitySourceGroupsMapping -Name "MyName" -RoleId "MyRoleId" # UserGroup |  (optional)

# Update a user group by ID
try {
    $Result = Update-UserGroup -UserGroupId $UserGroupId -UserGroup $UserGroup
} catch {
    Write-Host ("Exception occurred when calling Update-UserGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserGroupId** | **String**| User group ID. | 
 **UserGroup** | [**UserGroup**](UserGroup.md)|  | [optional] 

### Return type

[**UserGroup**](UserGroup.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2CreateActiveDirectoryIdentityProvider"></a>
# **Invoke-V2CreateActiveDirectoryIdentityProvider**
> ActiveDirectoryIdentityProviderResponse Invoke-V2CreateActiveDirectoryIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ActiveDirectoryIdentityProvider] <PSCustomObject><br>

Create an instance of Active Directory identity provider for another set of connectivity parameters

Create an instance of Active Directory identity provider for another set of connectivity parameters. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$IdentityProviderConfig = Initialize-IdentityProviderConfig -GroupMemberAttribute "MyGroupMemberAttribute" -GroupObjectTypeName "MyGroupObjectTypeName" -GroupSearchAttribute "MyGroupSearchAttribute" -GroupSearchBase "MyGroupSearchBase" -UserObjectTypeName "MyUserObjectTypeName" -UserSearchPath "MyUserSearchPath"
$IdentityProviderLink = Initialize-IdentityProviderLink -Alive $false -CheckEnabled $false -CheckInterval "MyCheckInterval" -LastAlive (Get-Date) -LastChecked (Get-Date) -NetworkTimeoutSeconds 0 -OperationTimeoutSeconds 0
$IdentityProviderAccountInfo = Initialize-IdentityProviderAccountInfo -Name "MyName" -Password "MyPassword"
$ActiveDirectoryIdentityProvider = Initialize-ActiveDirectoryIdentityProvider -AvailableSince (Get-Date) -Config $IdentityProviderConfig -Description "MyDescription" -Enabled $false -HighAvailabilityEnabled $false -VarHost "MyVarHost" -Link $IdentityProviderLink -Locator "MyLocator" -Port 0 -Secure $false -Selector "MySelector" -ServiceAccount $IdentityProviderAccountInfo -ServiceMarker "ldap" # ActiveDirectoryIdentityProvider |  (optional)

# Create an instance of Active Directory identity provider for another set of connectivity parameters
try {
    $Result = Invoke-V2CreateActiveDirectoryIdentityProvider -ActiveDirectoryIdentityProvider $ActiveDirectoryIdentityProvider
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2CreateActiveDirectoryIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ActiveDirectoryIdentityProvider** | [**ActiveDirectoryIdentityProvider**](ActiveDirectoryIdentityProvider.md)|  | [optional] 

### Return type

[**ActiveDirectoryIdentityProviderResponse**](ActiveDirectoryIdentityProviderResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2CreateIdentityAccessProvision"></a>
# **Invoke-V2CreateIdentityAccessProvision**
> IdentityAccessProvision Invoke-V2CreateIdentityAccessProvision<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityAccessProvision] <PSCustomObject><br>

Add a new access provision, unique for a subject at an identity provider

Add a new access provision, unique for a subject at an identity provider. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$IdentityAccessProvisionAccessResourceGroup = Initialize-IdentityAccessProvisionAccessResourceGroup -Locator "MyLocator" -Name "MyName"
$IdentityAccessProvisionAccessRole = Initialize-IdentityAccessProvisionAccessRole -DisplayName "MyDisplayName" -Locator "MyLocator" -Name "MyName"
$IdentityAccessProvisionAccess = Initialize-IdentityAccessProvisionAccess -ResourceGroup $IdentityAccessProvisionAccessResourceGroup -Role $IdentityAccessProvisionAccessRole

$IdentityAccessProvisionIdentityProvider = Initialize-IdentityAccessProvisionIdentityProvider -Locator "MyLocator" -Selector "MySelector" -ServiceMarker "MyServiceMarker"
$IdentityAccessProvision = Initialize-IdentityAccessProvision -Access $IdentityAccessProvisionAccess -AvailableSince (Get-Date) -IdentityProvider $IdentityAccessProvisionIdentityProvider -LastModified (Get-Date) -Locator "MyLocator" -Subject "MySubject" # IdentityAccessProvision |  (optional)

# Add a new access provision, unique for a subject at an identity provider
try {
    $Result = Invoke-V2CreateIdentityAccessProvision -IdentityAccessProvision $IdentityAccessProvision
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2CreateIdentityAccessProvision: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityAccessProvision** | [**IdentityAccessProvision**](IdentityAccessProvision.md)|  | [optional] 

### Return type

[**IdentityAccessProvision**](IdentityAccessProvision.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2CreateLdapIdentityProvider"></a>
# **Invoke-V2CreateLdapIdentityProvider**
> LdapIdentityProviderResponse Invoke-V2CreateLdapIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LdapIdentityProvider] <PSCustomObject><br>

Create an instance of Lightweight Directory Access Protocol (LDAP) identity provider for another set of connectivity parameters

Create an instance of Lightweight Directory Access Protocol (LDAP) identity provider for another set of connectivity parameters. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$IdentityProviderConfig = Initialize-IdentityProviderConfig -GroupMemberAttribute "MyGroupMemberAttribute" -GroupObjectTypeName "MyGroupObjectTypeName" -GroupSearchAttribute "MyGroupSearchAttribute" -GroupSearchBase "MyGroupSearchBase" -UserObjectTypeName "MyUserObjectTypeName" -UserSearchPath "MyUserSearchPath"
$IdentityProviderLink = Initialize-IdentityProviderLink -Alive $false -CheckEnabled $false -CheckInterval "MyCheckInterval" -LastAlive (Get-Date) -LastChecked (Get-Date) -NetworkTimeoutSeconds 0 -OperationTimeoutSeconds 0
$IdentityProviderAccountInfo = Initialize-IdentityProviderAccountInfo -Name "MyName" -Password "MyPassword"
$LdapIdentityProvider = Initialize-LdapIdentityProvider -AvailableSince (Get-Date) -Config $IdentityProviderConfig -Description "MyDescription" -Enabled $false -HighAvailabilityEnabled $false -VarHost "MyVarHost" -Link $IdentityProviderLink -Locator "MyLocator" -Port 0 -Secure $false -Selector "MySelector" -ServiceAccount $IdentityProviderAccountInfo -ServiceMarker "ldap" # LdapIdentityProvider |  (optional)

# Create an instance of Lightweight Directory Access Protocol (LDAP) identity provider for another set of connectivity parameters
try {
    $Result = Invoke-V2CreateLdapIdentityProvider -LdapIdentityProvider $LdapIdentityProvider
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2CreateLdapIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LdapIdentityProvider** | [**LdapIdentityProvider**](LdapIdentityProvider.md)|  | [optional] 

### Return type

[**LdapIdentityProviderResponse**](LdapIdentityProviderResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2CreateLocalAccount"></a>
# **Invoke-V2CreateLocalAccount**
> LocalIdentityAccount Invoke-V2CreateLocalAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LocalIdentityAccount] <PSCustomObject><br>

Create a local account

Create a Local Identity Provider account. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Local Identity Provider locator.
$LocalIdentityAccount = Initialize-LocalIdentityAccount -AvailableSince (Get-Date) -EmailAddress "MyEmailAddress" -Enabled $false -FirstName "MyFirstName" -LastName "MyLastName" -Locator "MyLocator" -Name "MyName" # LocalIdentityAccount |  (optional)

# Create a local account
try {
    $Result = Invoke-V2CreateLocalAccount -Locator $Locator -LocalIdentityAccount $LocalIdentityAccount
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2CreateLocalAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Local Identity Provider locator. | 
 **LocalIdentityAccount** | [**LocalIdentityAccount**](LocalIdentityAccount.md)|  | [optional] 

### Return type

[**LocalIdentityAccount**](LocalIdentityAccount.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2CreateLocalIdentityProviderDefaultAccount"></a>
# **Invoke-V2CreateLocalIdentityProviderDefaultAccount**
> LocalIdentityAccount Invoke-V2CreateLocalIdentityProviderDefaultAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LocalIdentityAccount] <PSCustomObject><br>

Create a local account

Create a Local Identity Provider account. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$LocalIdentityAccount = Initialize-LocalIdentityAccount -AvailableSince (Get-Date) -EmailAddress "MyEmailAddress" -Enabled $false -FirstName "MyFirstName" -LastName "MyLastName" -Locator "MyLocator" -Name "MyName" # LocalIdentityAccount |  (optional)

# Create a local account
try {
    $Result = Invoke-V2CreateLocalIdentityProviderDefaultAccount -LocalIdentityAccount $LocalIdentityAccount
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2CreateLocalIdentityProviderDefaultAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LocalIdentityAccount** | [**LocalIdentityAccount**](LocalIdentityAccount.md)|  | [optional] 

### Return type

[**LocalIdentityAccount**](LocalIdentityAccount.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2DeleteActiveDirectoryIdentityProvider"></a>
# **Invoke-V2DeleteActiveDirectoryIdentityProvider**
> SystemCollectionsHashtable Invoke-V2DeleteActiveDirectoryIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>

Remove the Active Directory identity provider

Remove the Active Directory identity provider. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Active Directory Identity Provider locator.

# Remove the Active Directory identity provider
try {
    $Result = Invoke-V2DeleteActiveDirectoryIdentityProvider -Locator $Locator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2DeleteActiveDirectoryIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Active Directory Identity Provider locator. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2DeleteIdentityAccessProvision"></a>
# **Invoke-V2DeleteIdentityAccessProvision**
> void Invoke-V2DeleteIdentityAccessProvision<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>

Delete an access provision for the specified locator

Delete an access provision for the specified locator. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Identity access provision locator.

# Delete an access provision for the specified locator
try {
    $Result = Invoke-V2DeleteIdentityAccessProvision -Locator $Locator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2DeleteIdentityAccessProvision: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Identity access provision locator. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2DeleteIdentityProvider"></a>
# **Invoke-V2DeleteIdentityProvider**
> void Invoke-V2DeleteIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>

Delete an identity provider

Delete an identity provider by locator. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Identity Provider locator.

# Delete an identity provider
try {
    $Result = Invoke-V2DeleteIdentityProvider -Locator $Locator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2DeleteIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Identity Provider locator. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2DeleteLdapIdentityProvider"></a>
# **Invoke-V2DeleteLdapIdentityProvider**
> SystemCollectionsHashtable Invoke-V2DeleteLdapIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>

Remove the Lightweight Directory Access Protocol (LDAP) identity provider

Remove the Lightweight Directory Access Protocol (LDAP) identity provider. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Lightweight Directory Access Protocol (LDAP) identity provider locator.

# Remove the Lightweight Directory Access Protocol (LDAP) identity provider
try {
    $Result = Invoke-V2DeleteLdapIdentityProvider -Locator $Locator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2DeleteLdapIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Lightweight Directory Access Protocol (LDAP) identity provider locator. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2DeleteLocalIdentityAuthEntry"></a>
# **Invoke-V2DeleteLocalIdentityAuthEntry**
> void Invoke-V2DeleteLocalIdentityAuthEntry<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthEntryLocator] <String><br>

Delete the local identity provider's authentication entry

Delete the Local Identity Provider authentication entry. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Local Identity Provider locator.
$AuthEntryLocator = "MyAuthEntryLocator" # String | Authentication Entry locator.

# Delete the local identity provider's authentication entry
try {
    $Result = Invoke-V2DeleteLocalIdentityAuthEntry -Locator $Locator -AuthEntryLocator $AuthEntryLocator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2DeleteLocalIdentityAuthEntry: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Local Identity Provider locator. | 
 **AuthEntryLocator** | **String**| Authentication Entry locator. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2DeleteLocalIdentityDefaultAuthEntry"></a>
# **Invoke-V2DeleteLocalIdentityDefaultAuthEntry**
> void Invoke-V2DeleteLocalIdentityDefaultAuthEntry<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>

Delete the local identity provider's authentication entry

Delete the Local Identity Provider authentication entry. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Authentication Entry locator.

# Delete the local identity provider's authentication entry
try {
    $Result = Invoke-V2DeleteLocalIdentityDefaultAuthEntry -Locator $Locator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2DeleteLocalIdentityDefaultAuthEntry: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Authentication Entry locator. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2DeleteLocalIdentityProviderDefaultAccount"></a>
# **Invoke-V2DeleteLocalIdentityProviderDefaultAccount**
> SystemCollectionsHashtable Invoke-V2DeleteLocalIdentityProviderDefaultAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountLocator] <String><br>

Delete a specified account

Delete a specified Local Identity Provider Account. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$AccountLocator = "MyAccountLocator" # String | Local Identity Provider account locator.

# Delete a specified account
try {
    $Result = Invoke-V2DeleteLocalIdentityProviderDefaultAccount -AccountLocator $AccountLocator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2DeleteLocalIdentityProviderDefaultAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccountLocator** | **String**| Local Identity Provider account locator. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2DeleteLocalIdentityProviderLocatorAccount"></a>
# **Invoke-V2DeleteLocalIdentityProviderLocatorAccount**
> SystemCollectionsHashtable Invoke-V2DeleteLocalIdentityProviderLocatorAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountLocator] <String><br>

Delete a specified account

Delete a specified Local Identity Provider account. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Local Identity Provider locator.
$AccountLocator = "MyAccountLocator" # String | Local Identity Provider account locator.

# Delete a specified account
try {
    $Result = Invoke-V2DeleteLocalIdentityProviderLocatorAccount -Locator $Locator -AccountLocator $AccountLocator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2DeleteLocalIdentityProviderLocatorAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Local Identity Provider locator. | 
 **AccountLocator** | **String**| Local Identity Provider account locator. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetActiveDirectoryIdentityProvider"></a>
# **Invoke-V2GetActiveDirectoryIdentityProvider**
> ActiveDirectoryIdentityProvider Invoke-V2GetActiveDirectoryIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>

Get the Active Directory identity provider with the locator

Get the Active Directory identity provider with the locator. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Active Directory Identity Provider locator.

# Get the Active Directory identity provider with the locator
try {
    $Result = Invoke-V2GetActiveDirectoryIdentityProvider -Locator $Locator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetActiveDirectoryIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Active Directory Identity Provider locator. | 

### Return type

[**ActiveDirectoryIdentityProvider**](ActiveDirectoryIdentityProvider.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetActiveDirectoryIdentityProviderAccounts"></a>
# **Invoke-V2GetActiveDirectoryIdentityProviderAccounts**
> IdentityAccounts Invoke-V2GetActiveDirectoryIdentityProviderAccounts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Get a list of Active Directory user accounts

Get a list of Active Directory user accounts based on an optional account name pattern. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Active Directory Identity Provider locator.
$Name = "MyName" # String | Retrieve list of Active DIrectory user accounts by name. (optional)
$Limit = 56 # Int32 | Retrieve list of Active DIrectory user accounts with results limit. (optional)

# Get a list of Active Directory user accounts
try {
    $Result = Invoke-V2GetActiveDirectoryIdentityProviderAccounts -Locator $Locator -Name $Name -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetActiveDirectoryIdentityProviderAccounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Active Directory Identity Provider locator. | 
 **Name** | **String**| Retrieve list of Active DIrectory user accounts by name. | [optional] 
 **Limit** | **Int32**| Retrieve list of Active DIrectory user accounts with results limit. | [optional] 

### Return type

[**IdentityAccounts**](IdentityAccounts.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetActiveDirectoryIdentityProviderGroup"></a>
# **Invoke-V2GetActiveDirectoryIdentityProviderGroup**
> IdentityGroup Invoke-V2GetActiveDirectoryIdentityProviderGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupLocator] <String><br>

Get group information for the specified group locator

Get group information for the specified group locator. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Active Directory Identity Provider locator.
$GroupLocator = "MyGroupLocator" # String | Active Directory Identity Provider group locator.

# Get group information for the specified group locator
try {
    $Result = Invoke-V2GetActiveDirectoryIdentityProviderGroup -Locator $Locator -GroupLocator $GroupLocator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetActiveDirectoryIdentityProviderGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Active Directory Identity Provider locator. | 
 **GroupLocator** | **String**| Active Directory Identity Provider group locator. | 

### Return type

[**IdentityGroup**](IdentityGroup.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetActiveDirectoryIdentityProviderGroups"></a>
# **Invoke-V2GetActiveDirectoryIdentityProviderGroups**
> IdentityGroups Invoke-V2GetActiveDirectoryIdentityProviderGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Get a list of Active Directory groups

Get a list of Active Directory groups based on an optional filter. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Active Directory Identity Provider locator.
$Name = "MyName" # String | Retrieve list of Active DIrectory groups by name. (optional)
$Limit = 56 # Int32 | Retrieve list of Active DIrectory groups with results limit. (optional)

# Get a list of Active Directory groups
try {
    $Result = Invoke-V2GetActiveDirectoryIdentityProviderGroups -Locator $Locator -Name $Name -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetActiveDirectoryIdentityProviderGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Active Directory Identity Provider locator. | 
 **Name** | **String**| Retrieve list of Active DIrectory groups by name. | [optional] 
 **Limit** | **Int32**| Retrieve list of Active DIrectory groups with results limit. | [optional] 

### Return type

[**IdentityGroups**](IdentityGroups.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetActiveDirectoryIdentityProviders"></a>
# **Invoke-V2GetActiveDirectoryIdentityProviders**
> ActiveDirectoryIdentityProvider[] Invoke-V2GetActiveDirectoryIdentityProviders<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Secure] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Host] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Alive] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Selector] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Description] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ServiceMarker] <String><br>

Get a list of all available Active Directory identity providers

Get a list of all available Active Directory identity providers. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$Secure = $true # Boolean | Retrieve a list of Active Directory identity providers by secure. (optional)
$Locator = "MyLocator" # String | Retrieve a list of Active Directory identity providers by locator. (optional)
$Host = "MyHost" # String | Retrieve a list of Active Directory identity providers by host. (optional)
$Alive = $true # Boolean | Retrieve a list of Active Directory identity providers by alive. (optional)
$Selector = "MySelector" # String | Retrieve a list of Active Directory identity providers by selector. (optional)
$Description = "MyDescription" # String | Retrieve a list of Active Directory identity providers by description. (optional)
$ServiceMarker = "MyServiceMarker" # String | Retrieve a list of Active Directory identity providers by serviceMarker. (optional)

# Get a list of all available Active Directory identity providers
try {
    $Result = Invoke-V2GetActiveDirectoryIdentityProviders -Page $Page -PageSize $PageSize -Orderby $Orderby -Secure $Secure -Locator $Locator -Host $Host -Alive $Alive -Selector $Selector -Description $Description -ServiceMarker $ServiceMarker
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetActiveDirectoryIdentityProviders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **Secure** | **Boolean**| Retrieve a list of Active Directory identity providers by secure. | [optional] 
 **Locator** | **String**| Retrieve a list of Active Directory identity providers by locator. | [optional] 
 **Host** | **String**| Retrieve a list of Active Directory identity providers by host. | [optional] 
 **Alive** | **Boolean**| Retrieve a list of Active Directory identity providers by alive. | [optional] 
 **Selector** | **String**| Retrieve a list of Active Directory identity providers by selector. | [optional] 
 **Description** | **String**| Retrieve a list of Active Directory identity providers by description. | [optional] 
 **ServiceMarker** | **String**| Retrieve a list of Active Directory identity providers by serviceMarker. | [optional] 

### Return type

[**ActiveDirectoryIdentityProvider[]**](ActiveDirectoryIdentityProvider.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetActiveDirectoryProviderAccount"></a>
# **Invoke-V2GetActiveDirectoryProviderAccount**
> IdentityAccount Invoke-V2GetActiveDirectoryProviderAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountLocator] <String><br>

Get user account information for the specified account locator

Get user account information for the specified account locator. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Active Directory Identity Provider locator.
$AccountLocator = "MyAccountLocator" # String | Active Directory Identity Provider account locator.

# Get user account information for the specified account locator
try {
    $Result = Invoke-V2GetActiveDirectoryProviderAccount -Locator $Locator -AccountLocator $AccountLocator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetActiveDirectoryProviderAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Active Directory Identity Provider locator. | 
 **AccountLocator** | **String**| Active Directory Identity Provider account locator. | 

### Return type

[**IdentityAccount**](IdentityAccount.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetAdDefaultConfig"></a>
# **Invoke-V2GetAdDefaultConfig**
> LdapDefaultConfig Invoke-V2GetAdDefaultConfig<br>

Active Directory Identity Provider default configuration

Get default configuration of the Active Directory. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Active Directory Identity Provider default configuration
try {
    $Result = Invoke-V2GetAdDefaultConfig
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetAdDefaultConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LdapDefaultConfig**](LdapDefaultConfig.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetAuthEntries"></a>
# **Invoke-V2GetAuthEntries**
> LocalIdentityAuthEntries Invoke-V2GetAuthEntries<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountLocator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForceChange] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeHashedPassword] <System.Nullable[Boolean]><br>

Get the local identity provider's authentication entries

Get the Local Identity Provider authentication entries. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Local Identity Provider locator.
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$AccountLocator = "MyAccountLocator" # String | Retrieve a list of local identity provider authentication entries by account locator. (optional)
$AccountName = "MyAccountName" # String | Retrieve a list of local identity provider authentication entries by account name. (optional)
$ForceChange = $true # Boolean | Retrieve a list of local identity provider authentication entries by force change. (optional)
$IncludeHashedPassword = $true # Boolean | Retrieve a list of local identity provider authentication entries by include hashed password. (optional)

# Get the local identity provider's authentication entries
try {
    $Result = Invoke-V2GetAuthEntries -Locator $Locator -Page $Page -PageSize $PageSize -Orderby $Orderby -AccountLocator $AccountLocator -AccountName $AccountName -ForceChange $ForceChange -IncludeHashedPassword $IncludeHashedPassword
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetAuthEntries: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Local Identity Provider locator. | 
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **AccountLocator** | **String**| Retrieve a list of local identity provider authentication entries by account locator. | [optional] 
 **AccountName** | **String**| Retrieve a list of local identity provider authentication entries by account name. | [optional] 
 **ForceChange** | **Boolean**| Retrieve a list of local identity provider authentication entries by force change. | [optional] 
 **IncludeHashedPassword** | **Boolean**| Retrieve a list of local identity provider authentication entries by include hashed password. | [optional] 

### Return type

[**LocalIdentityAuthEntries**](LocalIdentityAuthEntries.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetAuthEntry"></a>
# **Invoke-V2GetAuthEntry**
> LocalIdentityAuthEntry Invoke-V2GetAuthEntry<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthEntryLocator] <String><br>

Get a local identity provider's authentication entry

Get the Local Identity Provider authentication entry. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Local Identity Provider locator.
$AuthEntryLocator = "MyAuthEntryLocator" # String | Authentication Entry locator.

# Get a local identity provider's authentication entry
try {
    $Result = Invoke-V2GetAuthEntry -Locator $Locator -AuthEntryLocator $AuthEntryLocator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetAuthEntry: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Local Identity Provider locator. | 
 **AuthEntryLocator** | **String**| Authentication Entry locator. | 

### Return type

[**LocalIdentityAuthEntry**](LocalIdentityAuthEntry.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetIdentityAccessProvision"></a>
# **Invoke-V2GetIdentityAccessProvision**
> IdentityAccessProvision Invoke-V2GetIdentityAccessProvision<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>

Get an identity access provision

Get an identity access provision by locator. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | identity access provision locator

# Get an identity access provision
try {
    $Result = Invoke-V2GetIdentityAccessProvision -Locator $Locator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetIdentityAccessProvision: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| identity access provision locator | 

### Return type

[**IdentityAccessProvision**](IdentityAccessProvision.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetIdentityAccessProvisions"></a>
# **Invoke-V2GetIdentityAccessProvisions**
> IdentityAccessProvisions Invoke-V2GetIdentityAccessProvisions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProviderLocator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProviderSelector] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProviderServiceMarker] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Subject] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleLocator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleDisplayName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceGroupLocator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceGroupName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Local] <System.Nullable[Boolean]><br>

Get identity access provisions

Retrieve a page of identity access provisions. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$ProviderLocator = "MyProviderLocator" # String | Retrieve a list of identity access provisions by provider locator. (optional)
$ProviderSelector = "MyProviderSelector" # String | Retrieve a list of identity access provisions defined by provider selector. (optional)
$ProviderServiceMarker = "MyProviderServiceMarker" # String | Retrieve a list of identity access provisions defined by provider service marker. (optional)
$Subject = "MySubject" # String | Retrieve a list of identity access provisions by subject. (optional)
$RoleLocator = "MyRoleLocator" # String | Retrieve a list of identity access provisions defined by role locator. (optional)
$RoleName = "MyRoleName" # String | Retrieve a list of identity access provisions defined by role name. (optional)
$RoleDisplayName = "MyRoleDisplayName" # String | Retrieve a list of identity access provisions by role display name. (optional)
$ResourceGroupLocator = "MyResourceGroupLocator" # String | Retrieve a list of identity access provisions defined by resource group locator. (optional)
$ResourceGroupName = "MyResourceGroupName" # String | Retrieve a list of identity access provisions defined by resource group name. (optional)
$Local = $true # Boolean | Retrieve a list of identity access provisions defined by local. (optional)

# Get identity access provisions
try {
    $Result = Invoke-V2GetIdentityAccessProvisions -Page $Page -PageSize $PageSize -Orderby $Orderby -ProviderLocator $ProviderLocator -ProviderSelector $ProviderSelector -ProviderServiceMarker $ProviderServiceMarker -Subject $Subject -RoleLocator $RoleLocator -RoleName $RoleName -RoleDisplayName $RoleDisplayName -ResourceGroupLocator $ResourceGroupLocator -ResourceGroupName $ResourceGroupName -Local $Local
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetIdentityAccessProvisions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **ProviderLocator** | **String**| Retrieve a list of identity access provisions by provider locator. | [optional] 
 **ProviderSelector** | **String**| Retrieve a list of identity access provisions defined by provider selector. | [optional] 
 **ProviderServiceMarker** | **String**| Retrieve a list of identity access provisions defined by provider service marker. | [optional] 
 **Subject** | **String**| Retrieve a list of identity access provisions by subject. | [optional] 
 **RoleLocator** | **String**| Retrieve a list of identity access provisions defined by role locator. | [optional] 
 **RoleName** | **String**| Retrieve a list of identity access provisions defined by role name. | [optional] 
 **RoleDisplayName** | **String**| Retrieve a list of identity access provisions by role display name. | [optional] 
 **ResourceGroupLocator** | **String**| Retrieve a list of identity access provisions defined by resource group locator. | [optional] 
 **ResourceGroupName** | **String**| Retrieve a list of identity access provisions defined by resource group name. | [optional] 
 **Local** | **Boolean**| Retrieve a list of identity access provisions defined by local. | [optional] 

### Return type

[**IdentityAccessProvisions**](IdentityAccessProvisions.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetIdentityMetric"></a>
# **Invoke-V2GetIdentityMetric**
> IdentityMetric Invoke-V2GetIdentityMetric<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>

Get identity metric

Get a identity metric by specified metric locator. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | id

# Get identity metric
try {
    $Result = Invoke-V2GetIdentityMetric -Locator $Locator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetIdentityMetric: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| id | 

### Return type

[**IdentityMetric**](IdentityMetric.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetIdentityMetrics"></a>
# **Invoke-V2GetIdentityMetrics**
> IdentityMetrics Invoke-V2GetIdentityMetrics<br>

Get identity metrics

Retrieve a collection of identity provider metrics info. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get identity metrics
try {
    $Result = Invoke-V2GetIdentityMetrics
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetIdentityMetrics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**IdentityMetrics**](IdentityMetrics.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetIdentityProvider"></a>
# **Invoke-V2GetIdentityProvider**
> IdentityProvider Invoke-V2GetIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Local] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Selector] <String><br>

Get an identity provider for the locator

Get an identity provider for the locator. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Identity Provider locator.
$Local = $true # Boolean | Indicates whether it is a local identity provider, or not. (optional)
$Selector = "MySelector" # String | Identity provider selector, such as local for local identity provider, or a domain for Lightweight Directory Access Protocol (LDAP) identity provider, and so on. (optional)

# Get an identity provider for the locator
try {
    $Result = Invoke-V2GetIdentityProvider -Locator $Locator -Local $Local -Selector $Selector
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Identity Provider locator. | 
 **Local** | **Boolean**| Indicates whether it is a local identity provider, or not. | [optional] 
 **Selector** | **String**| Identity provider selector, such as local for local identity provider, or a domain for Lightweight Directory Access Protocol (LDAP) identity provider, and so on. | [optional] 

### Return type

[**IdentityProvider**](IdentityProvider.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetIdentityProviderAccount"></a>
# **Invoke-V2GetIdentityProviderAccount**
> IdentityAccount Invoke-V2GetIdentityProviderAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Get an account for the specified account name

Get an account for the specified account name. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Identity Provider locator.
$Name = "MyName" # String | Identity provider account name.

# Get an account for the specified account name
try {
    $Result = Invoke-V2GetIdentityProviderAccount -Locator $Locator -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetIdentityProviderAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Identity Provider locator. | 
 **Name** | **String**| Identity provider account name. | 

### Return type

[**IdentityAccount**](IdentityAccount.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetIdentityProviderAccounts"></a>
# **Invoke-V2GetIdentityProviderAccounts**
> IdentityAccounts Invoke-V2GetIdentityProviderAccounts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Get a collection of identity provider accounts

Get a collection of identity provider accounts based on an optional filter. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Identity Provider locator.
$Name = "MyName" # String | Account name pattern (optional)
$Limit = 56 # Int32 | number (optional)

# Get a collection of identity provider accounts
try {
    $Result = Invoke-V2GetIdentityProviderAccounts -Locator $Locator -Name $Name -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetIdentityProviderAccounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Identity Provider locator. | 
 **Name** | **String**| Account name pattern | [optional] 
 **Limit** | **Int32**| number | [optional] 

### Return type

[**IdentityAccounts**](IdentityAccounts.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetIdentityProviderGroup"></a>
# **Invoke-V2GetIdentityProviderGroup**
> IdentityGroup Invoke-V2GetIdentityProviderGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Get a group for the specified group name

Get a group for the specified group name. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Identity Provider locator.
$Name = "MyName" # String | Identity Provider Group name.

# Get a group for the specified group name
try {
    $Result = Invoke-V2GetIdentityProviderGroup -Locator $Locator -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetIdentityProviderGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Identity Provider locator. | 
 **Name** | **String**| Identity Provider Group name. | 

### Return type

[**IdentityGroup**](IdentityGroup.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetIdentityProviderGroups"></a>
# **Invoke-V2GetIdentityProviderGroups**
> IdentityGroups Invoke-V2GetIdentityProviderGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Get a collection of identity provider groups

Get a collection of identity provider groups based on an optional filter. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Identity Provider locator.
$Name = "MyName" # String | Group name search pattern. (optional)
$Limit = 56 # Int32 | Number of groups to return. (optional)

# Get a collection of identity provider groups
try {
    $Result = Invoke-V2GetIdentityProviderGroups -Locator $Locator -Name $Name -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetIdentityProviderGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Identity Provider locator. | 
 **Name** | **String**| Group name search pattern. | [optional] 
 **Limit** | **Int32**| Number of groups to return. | [optional] 

### Return type

[**IdentityGroups**](IdentityGroups.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetIdentityProviders"></a>
# **Invoke-V2GetIdentityProviders**
> IdentityProviders Invoke-V2GetIdentityProviders<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Local] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SelectorPattern] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Alive] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Host] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Selector] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ServiceMarker] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Description] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>

Get a collection of identity providers

Get a collection of identity providers. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Local = $true # Boolean | Indicates whether it is a local identity provider, or not. (optional)
$SelectorPattern = "MySelectorPattern" # String | Selector pattern (optional)
$Alive = $true # Boolean | Retrieve collection of identity providers by alive. (optional)
$Host = "MyHost" # String | Retrieve collection of identity providers by host. (optional)
$Selector = "MySelector" # String | Retrieve collection of identity providers by selector. (optional)
$ServiceMarker = "MyServiceMarker" # String | Retrieve collection of identity providers by service marker. (optional)
$Description = "MyDescription" # String | Retrieve collection of identity providers by description (optional)
$Locator = "MyLocator" # String | Retrieve collection of identity providers by locator. (optional)

# Get a collection of identity providers
try {
    $Result = Invoke-V2GetIdentityProviders -Local $Local -SelectorPattern $SelectorPattern -Alive $Alive -Host $Host -Selector $Selector -ServiceMarker $ServiceMarker -Description $Description -Locator $Locator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetIdentityProviders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Local** | **Boolean**| Indicates whether it is a local identity provider, or not. | [optional] 
 **SelectorPattern** | **String**| Selector pattern | [optional] 
 **Alive** | **Boolean**| Retrieve collection of identity providers by alive. | [optional] 
 **Host** | **String**| Retrieve collection of identity providers by host. | [optional] 
 **Selector** | **String**| Retrieve collection of identity providers by selector. | [optional] 
 **ServiceMarker** | **String**| Retrieve collection of identity providers by service marker. | [optional] 
 **Description** | **String**| Retrieve collection of identity providers by description | [optional] 
 **Locator** | **String**| Retrieve collection of identity providers by locator. | [optional] 

### Return type

[**IdentityProviders**](IdentityProviders.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetLdapDefaultConfig"></a>
# **Invoke-V2GetLdapDefaultConfig**
> LdapDefaultConfig Invoke-V2GetLdapDefaultConfig<br>

Lightweight Directory Access Protocol (LDAP) identity provider Default Configuration

Get the LDAP default configuration. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Lightweight Directory Access Protocol (LDAP) identity provider Default Configuration
try {
    $Result = Invoke-V2GetLdapDefaultConfig
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetLdapDefaultConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LdapDefaultConfig**](LdapDefaultConfig.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetLdapIdentityProvider"></a>
# **Invoke-V2GetLdapIdentityProvider**
> LdapIdentityProvider Invoke-V2GetLdapIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>

Get the Lightweight Directory Access Protocol (LDAP) identity provider for the locator

Get the Lightweight Directory Access Protocol (LDAP) identity provider for the locator. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Lightweight Directory Access Protocol (LDAP) identity provider locator.

# Get the Lightweight Directory Access Protocol (LDAP) identity provider for the locator
try {
    $Result = Invoke-V2GetLdapIdentityProvider -Locator $Locator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetLdapIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Lightweight Directory Access Protocol (LDAP) identity provider locator. | 

### Return type

[**LdapIdentityProvider**](LdapIdentityProvider.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetLdapIdentityProviderAccount"></a>
# **Invoke-V2GetLdapIdentityProviderAccount**
> IdentityAccount Invoke-V2GetLdapIdentityProviderAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountLocator] <String><br>

Get user account information for the specified account locator

Get user account information for the specified account locator. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Lightweight Directory Access Protocol (LDAP) identity provider locator
$AccountLocator = "MyAccountLocator" # String | Lightweight Directory Access Protocol (LDAP) identity provider account locator

# Get user account information for the specified account locator
try {
    $Result = Invoke-V2GetLdapIdentityProviderAccount -Locator $Locator -AccountLocator $AccountLocator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetLdapIdentityProviderAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Lightweight Directory Access Protocol (LDAP) identity provider locator | 
 **AccountLocator** | **String**| Lightweight Directory Access Protocol (LDAP) identity provider account locator | 

### Return type

[**IdentityAccount**](IdentityAccount.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetLdapIdentityProviderAccounts"></a>
# **Invoke-V2GetLdapIdentityProviderAccounts**
> IdentityAccounts Invoke-V2GetLdapIdentityProviderAccounts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Get a list of LDAP user accounts

Get a list of LDAP user accounts based on an optional account name pattern. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Lightweight Directory Access Protocol (LDAP) identity provider locator.
$Name = "MyName" # String | Retrieve list of LDAP user accounts by name. (optional)
$Limit = 56 # Int32 | Retrieve list of LDAP user accounts with results limit. (optional)

# Get a list of LDAP user accounts
try {
    $Result = Invoke-V2GetLdapIdentityProviderAccounts -Locator $Locator -Name $Name -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetLdapIdentityProviderAccounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Lightweight Directory Access Protocol (LDAP) identity provider locator. | 
 **Name** | **String**| Retrieve list of LDAP user accounts by name. | [optional] 
 **Limit** | **Int32**| Retrieve list of LDAP user accounts with results limit. | [optional] 

### Return type

[**IdentityAccounts**](IdentityAccounts.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetLdapIdentityProviderGroup"></a>
# **Invoke-V2GetLdapIdentityProviderGroup**
> IdentityGroup Invoke-V2GetLdapIdentityProviderGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupLocator] <String><br>

Get group information for the specified group locator

Get group information for the specified group locator. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Lightweight Directory Access Protocol (LDAP) identity provider locator.
$GroupLocator = "MyGroupLocator" # String | Lightweight Directory Access Protocol (LDAP) identity provider group locator.

# Get group information for the specified group locator
try {
    $Result = Invoke-V2GetLdapIdentityProviderGroup -Locator $Locator -GroupLocator $GroupLocator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetLdapIdentityProviderGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Lightweight Directory Access Protocol (LDAP) identity provider locator. | 
 **GroupLocator** | **String**| Lightweight Directory Access Protocol (LDAP) identity provider group locator. | 

### Return type

[**IdentityGroup**](IdentityGroup.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetLdapIdentityProviderGroups"></a>
# **Invoke-V2GetLdapIdentityProviderGroups**
> IdentityGroups Invoke-V2GetLdapIdentityProviderGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

Get a list of LDAP groups

Get a list of LDAP groups based on an optional filter. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Lightweight Directory Access Protocol (LDAP) identity provider Locator.
$Name = "MyName" # String | Retrieve list of LDAP groups by name. (optional)
$Limit = 56 # Int32 | Retrieve list of LDAP groups with results limit. (optional)

# Get a list of LDAP groups
try {
    $Result = Invoke-V2GetLdapIdentityProviderGroups -Locator $Locator -Name $Name -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetLdapIdentityProviderGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Lightweight Directory Access Protocol (LDAP) identity provider Locator. | 
 **Name** | **String**| Retrieve list of LDAP groups by name. | [optional] 
 **Limit** | **Int32**| Retrieve list of LDAP groups with results limit. | [optional] 

### Return type

[**IdentityGroups**](IdentityGroups.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetLdapIdentityProviders"></a>
# **Invoke-V2GetLdapIdentityProviders**
> LdapIdentityProviders Invoke-V2GetLdapIdentityProviders<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Secure] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Host] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Alive] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Selector] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Description] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ServiceMarker] <String><br>

Get a list of all available Lightweight Directory Access Protocol (LDAP) identity providers

Get a list of all available Lightweight Directory Access Protocol (LDAP) identity providers. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$Secure = $true # Boolean | Retrieve a list of Lightweight Directory Access Protocol (LDAP) identity providers by secure. (optional)
$Locator = "MyLocator" # String | Retrieve a list of Lightweight Directory Access Protocol (LDAP) identity providers by locator. (optional)
$Host = "MyHost" # String | Retrieve a list of Lightweight Directory Access Protocol (LDAP) identity providers by host. (optional)
$Alive = $true # Boolean | Retrieve a list of Lightweight Directory Access Protocol (LDAP) identity providers by alive. (optional)
$Selector = "MySelector" # String | Retrieve a list of Lightweight Directory Access Protocol (LDAP) identity providers by selector. (optional)
$Description = "MyDescription" # String | Retrieve a list of Lightweight Directory Access Protocol (LDAP) identity providers by description. (optional)
$ServiceMarker = "MyServiceMarker" # String | Retrieve a list of Lightweight Directory Access Protocol (LDAP) identity providers by serviceMarker. (optional)

# Get a list of all available Lightweight Directory Access Protocol (LDAP) identity providers
try {
    $Result = Invoke-V2GetLdapIdentityProviders -Page $Page -PageSize $PageSize -Orderby $Orderby -Secure $Secure -Locator $Locator -Host $Host -Alive $Alive -Selector $Selector -Description $Description -ServiceMarker $ServiceMarker
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetLdapIdentityProviders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **Secure** | **Boolean**| Retrieve a list of Lightweight Directory Access Protocol (LDAP) identity providers by secure. | [optional] 
 **Locator** | **String**| Retrieve a list of Lightweight Directory Access Protocol (LDAP) identity providers by locator. | [optional] 
 **Host** | **String**| Retrieve a list of Lightweight Directory Access Protocol (LDAP) identity providers by host. | [optional] 
 **Alive** | **Boolean**| Retrieve a list of Lightweight Directory Access Protocol (LDAP) identity providers by alive. | [optional] 
 **Selector** | **String**| Retrieve a list of Lightweight Directory Access Protocol (LDAP) identity providers by selector. | [optional] 
 **Description** | **String**| Retrieve a list of Lightweight Directory Access Protocol (LDAP) identity providers by description. | [optional] 
 **ServiceMarker** | **String**| Retrieve a list of Lightweight Directory Access Protocol (LDAP) identity providers by serviceMarker. | [optional] 

### Return type

[**LdapIdentityProviders**](LdapIdentityProviders.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetLocalDefaultIdentityProvider"></a>
# **Invoke-V2GetLocalDefaultIdentityProvider**
> LocalIdentityProvider Invoke-V2GetLocalDefaultIdentityProvider<br>

Get the default local identity provider

Get the default local identity provider. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get the default local identity provider
try {
    $Result = Invoke-V2GetLocalDefaultIdentityProvider
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetLocalDefaultIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LocalIdentityProvider**](LocalIdentityProvider.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetLocalIdentityProvider"></a>
# **Invoke-V2GetLocalIdentityProvider**
> LocalIdentityProvider Invoke-V2GetLocalIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>

Get a local identity provider by locator

Get a local identity provider by locator. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Identity Provider locator.

# Get a local identity provider by locator
try {
    $Result = Invoke-V2GetLocalIdentityProvider -Locator $Locator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetLocalIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Identity Provider locator. | 

### Return type

[**LocalIdentityProvider**](LocalIdentityProvider.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetLocalIdentityProviderDefaultAccount"></a>
# **Invoke-V2GetLocalIdentityProviderDefaultAccount**
> LocalIdentityAccount Invoke-V2GetLocalIdentityProviderDefaultAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountLocator] <String><br>

Get a specified account

Get a specified Local Identity Provider account. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$AccountLocator = "MyAccountLocator" # String | Local Identity Provider Account locator.

# Get a specified account
try {
    $Result = Invoke-V2GetLocalIdentityProviderDefaultAccount -AccountLocator $AccountLocator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetLocalIdentityProviderDefaultAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccountLocator** | **String**| Local Identity Provider Account locator. | 

### Return type

[**LocalIdentityAccount**](LocalIdentityAccount.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetLocalIdentityProviderDefaultAccounts"></a>
# **Invoke-V2GetLocalIdentityProviderDefaultAccounts**
> LocalIdentityAccounts Invoke-V2GetLocalIdentityProviderDefaultAccounts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FirstName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LastName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailAddress] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>

Get a page of Local Identity Provider Accounts

Get a list of Local Identity Provider Accounts. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$Name = "MyName" # String | Retrieve a list of local identity provider accounts by name. (optional)
$FirstName = "MyFirstName" # String | Retrieve a list of local identity provider accounts by first name. (optional)
$LastName = "MyLastName" # String | Retrieve a list of local identity provider accounts by last name. (optional)
$EmailAddress = "MyEmailAddress" # String | Retrieve a list of local identity provider accounts by email address. (optional)
$Locator = "MyLocator" # String | Retrieve a list of local identity provider accounts by locator. (optional)

# Get a page of Local Identity Provider Accounts
try {
    $Result = Invoke-V2GetLocalIdentityProviderDefaultAccounts -Page $Page -PageSize $PageSize -Orderby $Orderby -Name $Name -FirstName $FirstName -LastName $LastName -EmailAddress $EmailAddress -Locator $Locator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetLocalIdentityProviderDefaultAccounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **Name** | **String**| Retrieve a list of local identity provider accounts by name. | [optional] 
 **FirstName** | **String**| Retrieve a list of local identity provider accounts by first name. | [optional] 
 **LastName** | **String**| Retrieve a list of local identity provider accounts by last name. | [optional] 
 **EmailAddress** | **String**| Retrieve a list of local identity provider accounts by email address. | [optional] 
 **Locator** | **String**| Retrieve a list of local identity provider accounts by locator. | [optional] 

### Return type

[**LocalIdentityAccounts**](LocalIdentityAccounts.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetLocalIdentityProviderDefaultAuthEntries"></a>
# **Invoke-V2GetLocalIdentityProviderDefaultAuthEntries**
> LocalIdentityAuthEntries Invoke-V2GetLocalIdentityProviderDefaultAuthEntries<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountLocator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForceChange] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeHashedPassword] <System.Nullable[Boolean]><br>

Get the default local identity provider's authentication entries

Get the Local Identity Provider authentication entries. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$AccountLocator = "MyAccountLocator" # String | Retrieve a list of local identity provider authentication entries by account locator. (optional)
$AccountName = "MyAccountName" # String | Retrieve a list of local identity provider authentication entries by account name. (optional)
$ForceChange = $true # Boolean | Retrieve a list of local identity provider authentication entries by force change. (optional)
$IncludeHashedPassword = $true # Boolean | Retrieve a list of local identity provider authentication entries by include hashed password. (optional)

# Get the default local identity provider's authentication entries
try {
    $Result = Invoke-V2GetLocalIdentityProviderDefaultAuthEntries -Page $Page -PageSize $PageSize -Orderby $Orderby -AccountLocator $AccountLocator -AccountName $AccountName -ForceChange $ForceChange -IncludeHashedPassword $IncludeHashedPassword
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetLocalIdentityProviderDefaultAuthEntries: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **AccountLocator** | **String**| Retrieve a list of local identity provider authentication entries by account locator. | [optional] 
 **AccountName** | **String**| Retrieve a list of local identity provider authentication entries by account name. | [optional] 
 **ForceChange** | **Boolean**| Retrieve a list of local identity provider authentication entries by force change. | [optional] 
 **IncludeHashedPassword** | **Boolean**| Retrieve a list of local identity provider authentication entries by include hashed password. | [optional] 

### Return type

[**LocalIdentityAuthEntries**](LocalIdentityAuthEntries.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetLocalIdentityProviderDefaultAuthEntry"></a>
# **Invoke-V2GetLocalIdentityProviderDefaultAuthEntry**
> LocalIdentityAuthEntry Invoke-V2GetLocalIdentityProviderDefaultAuthEntry<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>

Get a default local identity provider's authentication entry

Get the Local Identity Provider authentication entry. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Authentication Entry locator.

# Get a default local identity provider's authentication entry
try {
    $Result = Invoke-V2GetLocalIdentityProviderDefaultAuthEntry -Locator $Locator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetLocalIdentityProviderDefaultAuthEntry: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Authentication Entry locator. | 

### Return type

[**LocalIdentityAuthEntry**](LocalIdentityAuthEntry.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetLocalIdentityProviderLocatorAccount"></a>
# **Invoke-V2GetLocalIdentityProviderLocatorAccount**
> LocalIdentityAccount Invoke-V2GetLocalIdentityProviderLocatorAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountLocator] <String><br>

Get a specified account

Get a specified local identity provider account. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Local Identity Provider locator.
$AccountLocator = "MyAccountLocator" # String | Local Identity Provider account locator.

# Get a specified account
try {
    $Result = Invoke-V2GetLocalIdentityProviderLocatorAccount -Locator $Locator -AccountLocator $AccountLocator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetLocalIdentityProviderLocatorAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Local Identity Provider locator. | 
 **AccountLocator** | **String**| Local Identity Provider account locator. | 

### Return type

[**LocalIdentityAccount**](LocalIdentityAccount.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetLocalIdentityProviderLocatorAccounts"></a>
# **Invoke-V2GetLocalIdentityProviderLocatorAccounts**
> LocalIdentityAccounts Invoke-V2GetLocalIdentityProviderLocatorAccounts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FirstName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LastName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailAddress] <String><br>

Get a page of Local Identity Provider accounts

Get a page of Local Identity Provider accounts. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Local Identity Provider locator.
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$Name = "MyName" # String | Retrieve a list of local identity provider accounts by name. (optional)
$FirstName = "MyFirstName" # String | Retrieve a list of local identity provider accounts by first name. (optional)
$LastName = "MyLastName" # String | Retrieve a list of local identity provider accounts by last name. (optional)
$EmailAddress = "MyEmailAddress" # String | Retrieve a list of local identity provider accounts by email address. (optional)

# Get a page of Local Identity Provider accounts
try {
    $Result = Invoke-V2GetLocalIdentityProviderLocatorAccounts -Locator $Locator -Page $Page -PageSize $PageSize -Orderby $Orderby -Name $Name -FirstName $FirstName -LastName $LastName -EmailAddress $EmailAddress
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetLocalIdentityProviderLocatorAccounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Local Identity Provider locator. | 
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **Name** | **String**| Retrieve a list of local identity provider accounts by name. | [optional] 
 **FirstName** | **String**| Retrieve a list of local identity provider accounts by first name. | [optional] 
 **LastName** | **String**| Retrieve a list of local identity provider accounts by last name. | [optional] 
 **EmailAddress** | **String**| Retrieve a list of local identity provider accounts by email address. | [optional] 

### Return type

[**LocalIdentityAccounts**](LocalIdentityAccounts.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2GetLocalIdentityProviders"></a>
# **Invoke-V2GetLocalIdentityProviders**
> LocalIdentityProvider[] Invoke-V2GetLocalIdentityProviders<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Host] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Alive] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Selector] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Description] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ServiceMarker] <String><br>

Get local identity providers

Get local identity providers (only one should be available). Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$Locator = "MyLocator" # String | Retrieve a list of local identity providers by locator. (optional)
$Host = "MyHost" # String | Retrieve a list of local identity providers by host. (optional)
$Alive = $true # Boolean | Retrieve a list of local identity providers by alive. (optional)
$Selector = "MySelector" # String | Retrieve a list of local identity providers by selector. (optional)
$Description = "MyDescription" # String | Retrieve a list of local identity providers by description. (optional)
$ServiceMarker = "MyServiceMarker" # String | Retrieve a list of local identity providers by serviceMarker. (optional)

# Get local identity providers
try {
    $Result = Invoke-V2GetLocalIdentityProviders -Page $Page -PageSize $PageSize -Orderby $Orderby -Locator $Locator -Host $Host -Alive $Alive -Selector $Selector -Description $Description -ServiceMarker $ServiceMarker
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2GetLocalIdentityProviders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **Locator** | **String**| Retrieve a list of local identity providers by locator. | [optional] 
 **Host** | **String**| Retrieve a list of local identity providers by host. | [optional] 
 **Alive** | **Boolean**| Retrieve a list of local identity providers by alive. | [optional] 
 **Selector** | **String**| Retrieve a list of local identity providers by selector. | [optional] 
 **Description** | **String**| Retrieve a list of local identity providers by description. | [optional] 
 **ServiceMarker** | **String**| Retrieve a list of local identity providers by serviceMarker. | [optional] 

### Return type

[**LocalIdentityProvider[]**](LocalIdentityProvider.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2PatchActiveDirectoryIdentityProvider"></a>
# **Invoke-V2PatchActiveDirectoryIdentityProvider**
> ActiveDirectoryIdentityProvider Invoke-V2PatchActiveDirectoryIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ActiveDirectoryIdentityProvider] <PSCustomObject><br>

Modify the Active Directory configuration parameters

Modify the Active Directory configuration parameters. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | The Active Directory Identity Provider locator.
$IdentityProviderConfig = Initialize-IdentityProviderConfig -GroupMemberAttribute "MyGroupMemberAttribute" -GroupObjectTypeName "MyGroupObjectTypeName" -GroupSearchAttribute "MyGroupSearchAttribute" -GroupSearchBase "MyGroupSearchBase" -UserObjectTypeName "MyUserObjectTypeName" -UserSearchPath "MyUserSearchPath"
$IdentityProviderLink = Initialize-IdentityProviderLink -Alive $false -CheckEnabled $false -CheckInterval "MyCheckInterval" -LastAlive (Get-Date) -LastChecked (Get-Date) -NetworkTimeoutSeconds 0 -OperationTimeoutSeconds 0
$IdentityProviderAccountInfo = Initialize-IdentityProviderAccountInfo -Name "MyName" -Password "MyPassword"
$ActiveDirectoryIdentityProvider = Initialize-ActiveDirectoryIdentityProvider -AvailableSince (Get-Date) -Config $IdentityProviderConfig -Description "MyDescription" -Enabled $false -HighAvailabilityEnabled $false -VarHost "MyVarHost" -Link $IdentityProviderLink -Locator "MyLocator" -Port 0 -Secure $false -Selector "MySelector" -ServiceAccount $IdentityProviderAccountInfo -ServiceMarker "ldap" # ActiveDirectoryIdentityProvider |  (optional)

# Modify the Active Directory configuration parameters
try {
    $Result = Invoke-V2PatchActiveDirectoryIdentityProvider -Locator $Locator -ActiveDirectoryIdentityProvider $ActiveDirectoryIdentityProvider
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2PatchActiveDirectoryIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| The Active Directory Identity Provider locator. | 
 **ActiveDirectoryIdentityProvider** | [**ActiveDirectoryIdentityProvider**](ActiveDirectoryIdentityProvider.md)|  | [optional] 

### Return type

[**ActiveDirectoryIdentityProvider**](ActiveDirectoryIdentityProvider.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2PatchIdentityAccessProvision"></a>
# **Invoke-V2PatchIdentityAccessProvision**
> IdentityAccessProvision Invoke-V2PatchIdentityAccessProvision<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityAccessProvisionPatch] <PSCustomObject><br>

Replace access related data for the specified locator (changing subject or identity-provider not allowed)

Replace access related data for the specified locator (changing subject or identity-provider not allowed). Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Identity Access Provider locator
$IdentityAccessProvisionAccessResourceGroup = Initialize-IdentityAccessProvisionAccessResourceGroup -Locator "MyLocator" -Name "MyName"
$IdentityAccessProvisionAccessRole = Initialize-IdentityAccessProvisionAccessRole -DisplayName "MyDisplayName" -Locator "MyLocator" -Name "MyName"
$IdentityAccessProvisionAccess = Initialize-IdentityAccessProvisionAccess -ResourceGroup $IdentityAccessProvisionAccessResourceGroup -Role $IdentityAccessProvisionAccessRole

$IdentityAccessProvisionIdentityProvider = Initialize-IdentityAccessProvisionIdentityProvider -Locator "MyLocator" -Selector "MySelector" -ServiceMarker "MyServiceMarker"
$IdentityAccessProvisionPatch = Initialize-IdentityAccessProvisionPatch -Access $IdentityAccessProvisionAccess -IdentityProvider $IdentityAccessProvisionIdentityProvider -Subject "MySubject" # IdentityAccessProvisionPatch |  (optional)

# Replace access related data for the specified locator (changing subject or identity-provider not allowed)
try {
    $Result = Invoke-V2PatchIdentityAccessProvision -Locator $Locator -IdentityAccessProvisionPatch $IdentityAccessProvisionPatch
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2PatchIdentityAccessProvision: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Identity Access Provider locator | 
 **IdentityAccessProvisionPatch** | [**IdentityAccessProvisionPatch**](IdentityAccessProvisionPatch.md)|  | [optional] 

### Return type

[**IdentityAccessProvision**](IdentityAccessProvision.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2PatchIdentityProvider"></a>
# **Invoke-V2PatchIdentityProvider**
> IdentityProvider Invoke-V2PatchIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>

Patch an identity provider

Patch an identity provider with locator. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Identity Provider ID

# Patch an identity provider
try {
    $Result = Invoke-V2PatchIdentityProvider -Locator $Locator
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2PatchIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Identity Provider ID | 

### Return type

[**IdentityProvider**](IdentityProvider.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2PatchLdapIdentityProvider"></a>
# **Invoke-V2PatchLdapIdentityProvider**
> LdapIdentityProvider Invoke-V2PatchLdapIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LdapIdentityProvider] <PSCustomObject><br>

Modify the LDAP configuration parameters

Modify the LDAP configuration parameters. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Lightweight Directory Access Protocol (LDAP) identity provider locator.
$IdentityProviderConfig = Initialize-IdentityProviderConfig -GroupMemberAttribute "MyGroupMemberAttribute" -GroupObjectTypeName "MyGroupObjectTypeName" -GroupSearchAttribute "MyGroupSearchAttribute" -GroupSearchBase "MyGroupSearchBase" -UserObjectTypeName "MyUserObjectTypeName" -UserSearchPath "MyUserSearchPath"
$IdentityProviderLink = Initialize-IdentityProviderLink -Alive $false -CheckEnabled $false -CheckInterval "MyCheckInterval" -LastAlive (Get-Date) -LastChecked (Get-Date) -NetworkTimeoutSeconds 0 -OperationTimeoutSeconds 0
$IdentityProviderAccountInfo = Initialize-IdentityProviderAccountInfo -Name "MyName" -Password "MyPassword"
$LdapIdentityProvider = Initialize-LdapIdentityProvider -AvailableSince (Get-Date) -Config $IdentityProviderConfig -Description "MyDescription" -Enabled $false -HighAvailabilityEnabled $false -VarHost "MyVarHost" -Link $IdentityProviderLink -Locator "MyLocator" -Port 0 -Secure $false -Selector "MySelector" -ServiceAccount $IdentityProviderAccountInfo -ServiceMarker "ldap" # LdapIdentityProvider |  (optional)

# Modify the LDAP configuration parameters
try {
    $Result = Invoke-V2PatchLdapIdentityProvider -Locator $Locator -LdapIdentityProvider $LdapIdentityProvider
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2PatchLdapIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Lightweight Directory Access Protocol (LDAP) identity provider locator. | 
 **LdapIdentityProvider** | [**LdapIdentityProvider**](LdapIdentityProvider.md)|  | [optional] 

### Return type

[**LdapIdentityProvider**](LdapIdentityProvider.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2PatchLocalIdentityAuthEntry"></a>
# **Invoke-V2PatchLocalIdentityAuthEntry**
> LocalIdentityAuthEntry Invoke-V2PatchLocalIdentityAuthEntry<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthEntryLocator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LocalIdentityAuthEntry] <PSCustomObject><br>

Update a local identity provider authentication entry

Update the Local Identity Provider authentication entry. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Local Identity Provider locator.
$AuthEntryLocator = "MyAuthEntryLocator" # String | Authentication Entry locator.
$LocalIdentityAuthEntry = Initialize-LocalIdentityAuthEntry -AccountLocator "MyAccountLocator" -AccountName "MyAccountName" -AccountPassword "MyAccountPassword" -AvailableSince (Get-Date) -Enabled $false -ForceChange $false -LastModified (Get-Date) -LastPasswordChangeTimestamp (Get-Date) -Locator "MyLocator" -Locked $false -PasswordExpirationTimestamp (Get-Date) # LocalIdentityAuthEntry |  (optional)

# Update a local identity provider authentication entry
try {
    $Result = Invoke-V2PatchLocalIdentityAuthEntry -Locator $Locator -AuthEntryLocator $AuthEntryLocator -LocalIdentityAuthEntry $LocalIdentityAuthEntry
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2PatchLocalIdentityAuthEntry: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Local Identity Provider locator. | 
 **AuthEntryLocator** | **String**| Authentication Entry locator. | 
 **LocalIdentityAuthEntry** | [**LocalIdentityAuthEntry**](LocalIdentityAuthEntry.md)|  | [optional] 

### Return type

[**LocalIdentityAuthEntry**](LocalIdentityAuthEntry.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2PatchLocalIdentityDefaultAuthEntry"></a>
# **Invoke-V2PatchLocalIdentityDefaultAuthEntry**
> LocalIdentityAuthEntry Invoke-V2PatchLocalIdentityDefaultAuthEntry<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LocalIdentityAuthEntry] <PSCustomObject><br>

Update a local identity provider authentication entry

Update the Local Identity Provider authentication entry. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Authentication Entry locator.
$LocalIdentityAuthEntry = Initialize-LocalIdentityAuthEntry -AccountLocator "MyAccountLocator" -AccountName "MyAccountName" -AccountPassword "MyAccountPassword" -AvailableSince (Get-Date) -Enabled $false -ForceChange $false -LastModified (Get-Date) -LastPasswordChangeTimestamp (Get-Date) -Locator "MyLocator" -Locked $false -PasswordExpirationTimestamp (Get-Date) # LocalIdentityAuthEntry |  (optional)

# Update a local identity provider authentication entry
try {
    $Result = Invoke-V2PatchLocalIdentityDefaultAuthEntry -Locator $Locator -LocalIdentityAuthEntry $LocalIdentityAuthEntry
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2PatchLocalIdentityDefaultAuthEntry: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Authentication Entry locator. | 
 **LocalIdentityAuthEntry** | [**LocalIdentityAuthEntry**](LocalIdentityAuthEntry.md)|  | [optional] 

### Return type

[**LocalIdentityAuthEntry**](LocalIdentityAuthEntry.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2PatchLocalIdentityProviderDefaultAccount"></a>
# **Invoke-V2PatchLocalIdentityProviderDefaultAccount**
> IdentityAccount Invoke-V2PatchLocalIdentityProviderDefaultAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountLocator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LocalIdentityAccount] <PSCustomObject><br>

Modify a specified account

Modify a specified Local Identity Provider Account. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$AccountLocator = "MyAccountLocator" # String | Local Identity Provider Account locator.
$LocalIdentityAccount = Initialize-LocalIdentityAccount -AvailableSince (Get-Date) -EmailAddress "MyEmailAddress" -Enabled $false -FirstName "MyFirstName" -LastName "MyLastName" -Locator "MyLocator" -Name "MyName" # LocalIdentityAccount |  (optional)

# Modify a specified account
try {
    $Result = Invoke-V2PatchLocalIdentityProviderDefaultAccount -AccountLocator $AccountLocator -LocalIdentityAccount $LocalIdentityAccount
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2PatchLocalIdentityProviderDefaultAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccountLocator** | **String**| Local Identity Provider Account locator. | 
 **LocalIdentityAccount** | [**LocalIdentityAccount**](LocalIdentityAccount.md)|  | [optional] 

### Return type

[**IdentityAccount**](IdentityAccount.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2PatchLocalIdentityProviderLocatorAccount"></a>
# **Invoke-V2PatchLocalIdentityProviderLocatorAccount**
> IdentityAccount Invoke-V2PatchLocalIdentityProviderLocatorAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountLocator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LocalIdentityAccount] <PSCustomObject><br>

Modify a specified account

Modify a specified local identity provider account. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Local Identity Provider locator.
$AccountLocator = "MyAccountLocator" # String | Local Identity Provider account locator.
$LocalIdentityAccount = Initialize-LocalIdentityAccount -AvailableSince (Get-Date) -EmailAddress "MyEmailAddress" -Enabled $false -FirstName "MyFirstName" -LastName "MyLastName" -Locator "MyLocator" -Name "MyName" # LocalIdentityAccount |  (optional)

# Modify a specified account
try {
    $Result = Invoke-V2PatchLocalIdentityProviderLocatorAccount -Locator $Locator -AccountLocator $AccountLocator -LocalIdentityAccount $LocalIdentityAccount
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2PatchLocalIdentityProviderLocatorAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Local Identity Provider locator. | 
 **AccountLocator** | **String**| Local Identity Provider account locator. | 
 **LocalIdentityAccount** | [**LocalIdentityAccount**](LocalIdentityAccount.md)|  | [optional] 

### Return type

[**IdentityAccount**](IdentityAccount.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2PutLocalIdenityProviderDefaultAccount"></a>
# **Invoke-V2PutLocalIdenityProviderDefaultAccount**
> LocalIdentityAccount Invoke-V2PutLocalIdenityProviderDefaultAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountLocator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LocalIdentityAccount] <PSCustomObject><br>

Replace a specified account

Replace a specified Local Identity Provider account. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$AccountLocator = "MyAccountLocator" # String | Local Identity Provider Account locator.
$LocalIdentityAccount = Initialize-LocalIdentityAccount -AvailableSince (Get-Date) -EmailAddress "MyEmailAddress" -Enabled $false -FirstName "MyFirstName" -LastName "MyLastName" -Locator "MyLocator" -Name "MyName" # LocalIdentityAccount |  (optional)

# Replace a specified account
try {
    $Result = Invoke-V2PutLocalIdenityProviderDefaultAccount -AccountLocator $AccountLocator -LocalIdentityAccount $LocalIdentityAccount
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2PutLocalIdenityProviderDefaultAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccountLocator** | **String**| Local Identity Provider Account locator. | 
 **LocalIdentityAccount** | [**LocalIdentityAccount**](LocalIdentityAccount.md)|  | [optional] 

### Return type

[**LocalIdentityAccount**](LocalIdentityAccount.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2PutLocalIdenityProviderLocatorAccount"></a>
# **Invoke-V2PutLocalIdenityProviderLocatorAccount**
> LocalIdentityAccount Invoke-V2PutLocalIdenityProviderLocatorAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountLocator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LocalIdentityAccount] <PSCustomObject><br>

Replace a specified account

Replace a specified local identity provider account. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Local Identity Provider locator.
$AccountLocator = "MyAccountLocator" # String | Local Identity Provider account locator.
$LocalIdentityAccount = Initialize-LocalIdentityAccount -AvailableSince (Get-Date) -EmailAddress "MyEmailAddress" -Enabled $false -FirstName "MyFirstName" -LastName "MyLastName" -Locator "MyLocator" -Name "MyName" # LocalIdentityAccount |  (optional)

# Replace a specified account
try {
    $Result = Invoke-V2PutLocalIdenityProviderLocatorAccount -Locator $Locator -AccountLocator $AccountLocator -LocalIdentityAccount $LocalIdentityAccount
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2PutLocalIdenityProviderLocatorAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Local Identity Provider locator. | 
 **AccountLocator** | **String**| Local Identity Provider account locator. | 
 **LocalIdentityAccount** | [**LocalIdentityAccount**](LocalIdentityAccount.md)|  | [optional] 

### Return type

[**LocalIdentityAccount**](LocalIdentityAccount.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2UpdateAuthEntry"></a>
# **Invoke-V2UpdateAuthEntry**
> LocalIdentityAuthEntry Invoke-V2UpdateAuthEntry<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthEntryLocator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LocalIdentityAuthEntry] <PSCustomObject><br>

Update a local identity provider authentication entry

Update the Local Identity Provider authentication entry. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Local Identity Provider locator.
$AuthEntryLocator = "MyAuthEntryLocator" # String | Authentication Entry locator.
$LocalIdentityAuthEntry = Initialize-LocalIdentityAuthEntry -AccountLocator "MyAccountLocator" -AccountName "MyAccountName" -AccountPassword "MyAccountPassword" -AvailableSince (Get-Date) -Enabled $false -ForceChange $false -LastModified (Get-Date) -LastPasswordChangeTimestamp (Get-Date) -Locator "MyLocator" -Locked $false -PasswordExpirationTimestamp (Get-Date) # LocalIdentityAuthEntry |  (optional)

# Update a local identity provider authentication entry
try {
    $Result = Invoke-V2UpdateAuthEntry -Locator $Locator -AuthEntryLocator $AuthEntryLocator -LocalIdentityAuthEntry $LocalIdentityAuthEntry
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2UpdateAuthEntry: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Local Identity Provider locator. | 
 **AuthEntryLocator** | **String**| Authentication Entry locator. | 
 **LocalIdentityAuthEntry** | [**LocalIdentityAuthEntry**](LocalIdentityAuthEntry.md)|  | [optional] 

### Return type

[**LocalIdentityAuthEntry**](LocalIdentityAuthEntry.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2UpdateLocalIdentityProviderDefaultAuthEntry"></a>
# **Invoke-V2UpdateLocalIdentityProviderDefaultAuthEntry**
> LocalIdentityAuthEntry Invoke-V2UpdateLocalIdentityProviderDefaultAuthEntry<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locator] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LocalIdentityAuthEntry] <PSCustomObject><br>

Update a local identity provider authentication entry

Update the Local Identity Provider authentication entry. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Locator = "MyLocator" # String | Authentication Entry locator.
$LocalIdentityAuthEntry = Initialize-LocalIdentityAuthEntry -AccountLocator "MyAccountLocator" -AccountName "MyAccountName" -AccountPassword "MyAccountPassword" -AvailableSince (Get-Date) -Enabled $false -ForceChange $false -LastModified (Get-Date) -LastPasswordChangeTimestamp (Get-Date) -Locator "MyLocator" -Locked $false -PasswordExpirationTimestamp (Get-Date) # LocalIdentityAuthEntry |  (optional)

# Update a local identity provider authentication entry
try {
    $Result = Invoke-V2UpdateLocalIdentityProviderDefaultAuthEntry -Locator $Locator -LocalIdentityAuthEntry $LocalIdentityAuthEntry
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2UpdateLocalIdentityProviderDefaultAuthEntry: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Locator** | **String**| Authentication Entry locator. | 
 **LocalIdentityAuthEntry** | [**LocalIdentityAuthEntry**](LocalIdentityAuthEntry.md)|  | [optional] 

### Return type

[**LocalIdentityAuthEntry**](LocalIdentityAuthEntry.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

