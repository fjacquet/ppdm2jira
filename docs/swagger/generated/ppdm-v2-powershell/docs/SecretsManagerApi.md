# PpdmApiReference.PpdmApiReference\Api.SecretsManagerApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-CrlEntry**](SecretsManagerApi.md#Add-CrlEntry) | **POST** /api/v2/certificates/revoked | Add a certificate to the certificate revocation list.
[**Invoke-DeleteCertificate**](SecretsManagerApi.md#Invoke-DeleteCertificate) | **DELETE** /api/v2/certificates/{certId} | Delete a certificate by ID
[**Invoke-DeleteCertificateBundle**](SecretsManagerApi.md#Invoke-DeleteCertificateBundle) | **DELETE** /api/v2/certificate-bundles/{secretName} | Delete a certificate bundle by secret name
[**Get-AgentCertificates**](SecretsManagerApi.md#Get-AgentCertificates) | **GET** /api/v2/certificates/agent | Get all the agent certificates
[**Get-Certificate**](SecretsManagerApi.md#Get-Certificate) | **GET** /api/v2/certificates/{certId} | Get a certificate by ID
[**Get-CertificateBundle**](SecretsManagerApi.md#Get-CertificateBundle) | **GET** /api/v2/certificate-bundles/{secretName} | Get a certificate bundle by secret name
[**Get-CertificateSettings**](SecretsManagerApi.md#Get-CertificateSettings) | **GET** /api/v2/certificate-settings | Get a certificate settings
[**Get-Certificates**](SecretsManagerApi.md#Get-Certificates) | **GET** /api/v2/certificates | Get all the certificates
[**Get-Crl**](SecretsManagerApi.md#Get-Crl) | **GET** /api/v2/certificates/revoked | Retrieve the list of revoked certificates
[**Get-CrlEntryByFingerprint**](SecretsManagerApi.md#Get-CrlEntryByFingerprint) | **GET** /api/v2/certificates/revoked/{fingerprint} | Retrieve a certificate revocation list entry by fingerprint
[**Get-ExternalCertificates**](SecretsManagerApi.md#Get-ExternalCertificates) | **GET** /api/v2/certificates/external | Get all the external certificates
[**Get-InternalCertificates**](SecretsManagerApi.md#Get-InternalCertificates) | **GET** /api/v2/certificates/internal | Get all the internal certificates
[**Get-RootCertificates**](SecretsManagerApi.md#Get-RootCertificates) | **GET** /api/v2/certificates/root | Get all the root certificates
[**Invoke-PatchCertificateSettings**](SecretsManagerApi.md#Invoke-PatchCertificateSettings) | **PATCH** /api/v2/certificate-settings | Update a certificate settings
[**Submit-CertBundle**](SecretsManagerApi.md#Submit-CertBundle) | **POST** /api/v2/certificate-bundles | Create a certificate bundle
[**Submit-CertByCertChain**](SecretsManagerApi.md#Submit-CertByCertChain) | **POST** /api/v2/certificates | Add a certificate by certificate chain
[**Invoke-ReplaceCertificate**](SecretsManagerApi.md#Invoke-ReplaceCertificate) | **POST** /api/v2/certificates-replacement | Replace self-signed certificates with customer certificates
[**Reset-Lockbox**](SecretsManagerApi.md#Reset-Lockbox) | **POST** /api/v2/lockbox-reset | Reset the lock box
[**Invoke-SignCertificate**](SecretsManagerApi.md#Invoke-SignCertificate) | **POST** /api/v2/certificates-signing | Sign a certificate signing request (CSR)
[**Update-Certificate**](SecretsManagerApi.md#Update-Certificate) | **PUT** /api/v2/certificates/{certId} | Update a certificate by ID
[**Test-ClientCertificates**](SecretsManagerApi.md#Test-ClientCertificates) | **POST** /api/v2/certificates-verify | Validate client agent certificates


<a id="Add-CrlEntry"></a>
# **Add-CrlEntry**
> CrlEntryResponse Add-CrlEntry<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CrlEntryRequest] <PSCustomObject><br>

Add a certificate to the certificate revocation list.

Add a new certificate to the certificate revocation list. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CrlEntryRequest = Initialize-CrlEntryRequest -Certificate "MyCertificate" -Notes "MyNotes" -Reason "UNSPECIFIED" # CrlEntryRequest |  (optional)

# Add a certificate to the certificate revocation list.
try {
    $Result = Add-CrlEntry -CrlEntryRequest $CrlEntryRequest
} catch {
    Write-Host ("Exception occurred when calling Add-CrlEntry: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CrlEntryRequest** | [**CrlEntryRequest**](CrlEntryRequest.md)|  | [optional] 

### Return type

[**CrlEntryResponse**](CrlEntryResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteCertificate"></a>
# **Invoke-DeleteCertificate**
> void Invoke-DeleteCertificate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CertId] <String><br>

Delete a certificate by ID

Deletes an external host TLS certificate that is stored in the trust store by using the ID of the certificate. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CertId = "MyCertId" # String | Certificate ID.

# Delete a certificate by ID
try {
    $Result = Invoke-DeleteCertificate -CertId $CertId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteCertificate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CertId** | **String**| Certificate ID. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteCertificateBundle"></a>
# **Invoke-DeleteCertificateBundle**
> void Invoke-DeleteCertificateBundle<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SecretName] <String><br>

Delete a certificate bundle by secret name

Deletes the certificate bundle with the specified secret name. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$SecretName = "MySecretName" # String | The secret name of the bundle.

# Delete a certificate bundle by secret name
try {
    $Result = Invoke-DeleteCertificateBundle -SecretName $SecretName
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteCertificateBundle: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SecretName** | **String**| The secret name of the bundle. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AgentCertificates"></a>
# **Get-AgentCertificates**
> Certificates Get-AgentCertificates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <String><br>

Get all the agent certificates

Retrieve the agent TLS certificates that are stored in the trust store, and list them in the response body in JSON format. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$OrderBy = "MyOrderBy" # String | Retrieve a list of agent certificates defined by the sorting order. (optional)

# Get all the agent certificates
try {
    $Result = Get-AgentCertificates -Page $Page -PageSize $PageSize -Filter $Filter -OrderBy $OrderBy
} catch {
    Write-Host ("Exception occurred when calling Get-AgentCertificates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **OrderBy** | **String**| Retrieve a list of agent certificates defined by the sorting order. | [optional] 

### Return type

[**Certificates**](Certificates.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Certificate"></a>
# **Get-Certificate**
> Certificate Get-Certificate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CertId] <String><br>

Get a certificate by ID

Retrieve an external host TLS certificate that is stored in the trust store, and list it in the response body in JSON format. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CertId = "MyCertId" # String | Certificate ID.

# Get a certificate by ID
try {
    $Result = Get-Certificate -CertId $CertId
} catch {
    Write-Host ("Exception occurred when calling Get-Certificate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CertId** | **String**| Certificate ID. | 

### Return type

[**Certificate**](Certificate.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CertificateBundle"></a>
# **Get-CertificateBundle**
> CertificateBundle Get-CertificateBundle<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SecretName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Csr] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PrivateKey] <String><br>

Get a certificate bundle by secret name

Retrieve the certificate bundle, private key and certificate chain including host, intermediate and root certificates. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$SecretName = "MySecretName" # String | Secret Name of the Bundle.
$Csr = "MyCsr" # String | Specify the certificate signing request (CSR). (optional)
$PrivateKey = "MyPrivateKey" # String | Specify the private key. (optional)

# Get a certificate bundle by secret name
try {
    $Result = Get-CertificateBundle -SecretName $SecretName -Csr $Csr -PrivateKey $PrivateKey
} catch {
    Write-Host ("Exception occurred when calling Get-CertificateBundle: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SecretName** | **String**| Secret Name of the Bundle. | 
 **Csr** | **String**| Specify the certificate signing request (CSR). | [optional] 
 **PrivateKey** | **String**| Specify the private key. | [optional] 

### Return type

[**CertificateBundle**](CertificateBundle.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CertificateSettings"></a>
# **Get-CertificateSettings**
> CertificateSettings Get-CertificateSettings<br>

Get a certificate settings

Retrieve the certificate settings. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get a certificate settings
try {
    $Result = Get-CertificateSettings
} catch {
    Write-Host ("Exception occurred when calling Get-CertificateSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CertificateSettings**](CertificateSettings.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Certificates"></a>
# **Get-Certificates**
> Certificate[] Get-Certificates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Host] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Port] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Strict] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <String><br>

Get all the certificates

Retrieve the external hosts and root CA TLS certificates that are stored in the trust store and have the state ACCEPTED. List them in the response body in JSON format. Identical to GET /api/v2/certificates/external. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Host = "MyHost" # String | Specify the host from which to get the certificate.
$Port = "MyPort" # String | Specify the port number from which to get the certificate.
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Type = "HOST" # String | Specify the type of certificate to get. (optional) (default to "HOST")
$Strict = $true # Boolean | Check if the host IP or fully qualified domain name (FQDN) used in host is in the certificate's subject alternative name. (optional) (default to $false)
$OrderBy = "MyOrderBy" # String | Retrieve a list of certificates defined by the sorting order. (optional)

# Get all the certificates
try {
    $Result = Get-Certificates -Host $Host -Port $Port -Page $Page -PageSize $PageSize -Filter $Filter -Type $Type -Strict $Strict -OrderBy $OrderBy
} catch {
    Write-Host ("Exception occurred when calling Get-Certificates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Host** | **String**| Specify the host from which to get the certificate. | 
 **Port** | **String**| Specify the port number from which to get the certificate. | 
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Type** | **String**| Specify the type of certificate to get. | [optional] [default to &quot;HOST&quot;]
 **Strict** | **Boolean**| Check if the host IP or fully qualified domain name (FQDN) used in host is in the certificate&#39;s subject alternative name. | [optional] [default to $false]
 **OrderBy** | **String**| Retrieve a list of certificates defined by the sorting order. | [optional] 

### Return type

[**Certificate[]**](Certificate.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Crl"></a>
# **Get-Crl**
> Crl Get-Crl<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Retrieve the list of revoked certificates

Retrieve the list of revoked certificates. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Retrieve the list of revoked certificates
try {
    $Result = Get-Crl -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-Crl: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**Crl**](Crl.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CrlEntryByFingerprint"></a>
# **Get-CrlEntryByFingerprint**
> CrlEntryResponse Get-CrlEntryByFingerprint<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Fingerprint] <String><br>

Retrieve a certificate revocation list entry by fingerprint

Retrieve the entry in the certificate revocation list by fingerprint. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Fingerprint = "MyFingerprint" # String | SHA-1 fingerprint of the certificate.

# Retrieve a certificate revocation list entry by fingerprint
try {
    $Result = Get-CrlEntryByFingerprint -Fingerprint $Fingerprint
} catch {
    Write-Host ("Exception occurred when calling Get-CrlEntryByFingerprint: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Fingerprint** | **String**| SHA-1 fingerprint of the certificate. | 

### Return type

[**CrlEntryResponse**](CrlEntryResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ExternalCertificates"></a>
# **Get-ExternalCertificates**
> Certificates Get-ExternalCertificates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <String><br>

Get all the external certificates

Retrieve the external hosts and root CA TLS certificates that are stored in the trust store and have the state ACCEPTED. List them in the response body in JSON format. Identical to GET /api/v2/certificates. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$OrderBy = "MyOrderBy" # String | Retrieve a list of external certificates defined by the sorting order. (optional)

# Get all the external certificates
try {
    $Result = Get-ExternalCertificates -Page $Page -PageSize $PageSize -Filter $Filter -OrderBy $OrderBy
} catch {
    Write-Host ("Exception occurred when calling Get-ExternalCertificates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **OrderBy** | **String**| Retrieve a list of external certificates defined by the sorting order. | [optional] 

### Return type

[**Certificates**](Certificates.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-InternalCertificates"></a>
# **Get-InternalCertificates**
> Certificates Get-InternalCertificates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <String><br>

Get all the internal certificates

Retrieve the internal hosts TLS certificates that are stored in the trust store, and list them in the response body in JSON format. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$OrderBy = "MyOrderBy" # String | Retrieve a list of internal certificates defined by the sorting order. (optional)

# Get all the internal certificates
try {
    $Result = Get-InternalCertificates -Page $Page -PageSize $PageSize -Filter $Filter -OrderBy $OrderBy
} catch {
    Write-Host ("Exception occurred when calling Get-InternalCertificates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **OrderBy** | **String**| Retrieve a list of internal certificates defined by the sorting order. | [optional] 

### Return type

[**Certificates**](Certificates.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-RootCertificates"></a>
# **Get-RootCertificates**
> CertificateRoot Get-RootCertificates<br>

Get all the root certificates

Retrieve the root certificate and globalCA certificate that are stored in the trust store, and list them in the response body in JSON format. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get all the root certificates
try {
    $Result = Get-RootCertificates
} catch {
    Write-Host ("Exception occurred when calling Get-RootCertificates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CertificateRoot**](CertificateRoot.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PatchCertificateSettings"></a>
# **Invoke-PatchCertificateSettings**
> CertificateSettings Invoke-PatchCertificateSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CertificateSettings] <PSCustomObject><br>

Update a certificate settings

Update the certificate settings. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CertificateSettings = Initialize-CertificateSettings -HostCertificateExpiration "MyHostCertificateExpiration" -RootCertificateExpiration "MyRootCertificateExpiration" # CertificateSettings |  (optional)

# Update a certificate settings
try {
    $Result = Invoke-PatchCertificateSettings -CertificateSettings $CertificateSettings
} catch {
    Write-Host ("Exception occurred when calling Invoke-PatchCertificateSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CertificateSettings** | [**CertificateSettings**](CertificateSettings.md)|  | [optional] 

### Return type

[**CertificateSettings**](CertificateSettings.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-CertBundle"></a>
# **Submit-CertBundle**
> CertificateBundle Submit-CertBundle<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CertificateBundleRequest] <PSCustomObject><br>

Create a certificate bundle

Create a new certificate bundle. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CertificateBundleRequest = Initialize-CertificateBundleRequest -BadgeId "MyBadgeId" -CsrOnly $false -DnsNames "MyDnsNames" -VarHost "MyVarHost" -IpAddresses "MyIpAddresses" -Password "MyPassword" -SecretName "MySecretName" # CertificateBundleRequest |  (optional)

# Create a certificate bundle
try {
    $Result = Submit-CertBundle -CertificateBundleRequest $CertificateBundleRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-CertBundle: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CertificateBundleRequest** | [**CertificateBundleRequest**](CertificateBundleRequest.md)|  | [optional] 

### Return type

[**CertificateBundle**](CertificateBundle.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-CertByCertChain"></a>
# **Submit-CertByCertChain**
> Certificate Submit-CertByCertChain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SaveFile] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostCertificateChainRequest] <PSCustomObject><br>

Add a certificate by certificate chain

Add a certificate to the truststore by providing the certificate chain. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$SaveFile = $true # Boolean | Specify whether to save certificate to file. (optional)
$PostCertificateChainRequest = Initialize-PostCertificateChainRequest -CertificateChain "MyCertificateChain" -Fingerprint "MyFingerprint" -VarHost "MyVarHost" -Id "MyId" -IssuerName "MyIssuerName" -NotValidAfter (Get-Date) -NotValidBefore (Get-Date) -Port "MyPort" -State "ACCEPTED" -SubjectName "MySubjectName" -Type "ROOT" -Verify $false # PostCertificateChainRequest |  (optional)

# Add a certificate by certificate chain
try {
    $Result = Submit-CertByCertChain -SaveFile $SaveFile -PostCertificateChainRequest $PostCertificateChainRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-CertByCertChain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SaveFile** | **Boolean**| Specify whether to save certificate to file. | [optional] 
 **PostCertificateChainRequest** | [**PostCertificateChainRequest**](PostCertificateChainRequest.md)|  | [optional] 

### Return type

[**Certificate**](Certificate.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ReplaceCertificate"></a>
# **Invoke-ReplaceCertificate**
> CertificateReplacementResponse Invoke-ReplaceCertificate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CertificateReplacement] <PSCustomObject><br>

Replace self-signed certificates with customer certificates

Replace self-signed certificates with the customer certificates signed by a well-known Certificate Authority for both NGINX (UI) and ZUUL (Rest API).  Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CertificateReplacement = Initialize-CertificateReplacement -CertificateChain "MyCertificateChain" -Ica $false -Password "MyPassword" -PrivateKey "MyPrivateKey" # CertificateReplacement |  (optional)

# Replace self-signed certificates with customer certificates
try {
    $Result = Invoke-ReplaceCertificate -CertificateReplacement $CertificateReplacement
} catch {
    Write-Host ("Exception occurred when calling Invoke-ReplaceCertificate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CertificateReplacement** | [**CertificateReplacement**](CertificateReplacement.md)|  | [optional] 

### Return type

[**CertificateReplacementResponse**](CertificateReplacementResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Reset-Lockbox"></a>
# **Reset-Lockbox**
> String Reset-Lockbox<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostResetLockboxRequest] <PSCustomObject><br>

Reset the lock box

Reset the lock box of the system. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$PostResetLockboxRequest = Initialize-PostResetLockboxRequest -NewPassphrase "MyNewPassphrase" -Passphrase "MyPassphrase" # PostResetLockboxRequest |  (optional)

# Reset the lock box
try {
    $Result = Reset-Lockbox -PostResetLockboxRequest $PostResetLockboxRequest
} catch {
    Write-Host ("Exception occurred when calling Reset-Lockbox: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PostResetLockboxRequest** | [**PostResetLockboxRequest**](PostResetLockboxRequest.md)|  | [optional] 

### Return type

**String**

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-SignCertificate"></a>
# **Invoke-SignCertificate**
> CertificateSigningResponse Invoke-SignCertificate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CertificateSigningRequest] <PSCustomObject><br>

Sign a certificate signing request (CSR)

Sign a CSR by providing the certificate content and the IP and FQDN of the external host. The IP of the external host must be added to the whitelist before signing the CSR. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$CertificateSigningRequest = Initialize-CertificateSigningRequest -BadgeId "MyBadgeId" -Csr "MyCsr" -Fqdn "MyFqdn" -Ips "MyIps" # CertificateSigningRequest |  (optional)

# Sign a certificate signing request (CSR)
try {
    $Result = Invoke-SignCertificate -CertificateSigningRequest $CertificateSigningRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-SignCertificate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CertificateSigningRequest** | [**CertificateSigningRequest**](CertificateSigningRequest.md)|  | [optional] 

### Return type

[**CertificateSigningResponse**](CertificateSigningResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Certificate"></a>
# **Update-Certificate**
> Certificate Update-Certificate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CertId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SaveFile] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Certificate] <PSCustomObject><br>

Update a certificate by ID

Update an external host TLS certificate that is stored in the trust store by using the ID of the certificate. List the updated one in the response body in JSON format. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CertId = "MyCertId" # String | Specify the certificate ID.
$SaveFile = $true # Boolean | Specify whether to save certificate to file. (optional)
$Certificate = Initialize-Certificate -CertificateChain "MyCertificateChain" -Fingerprint "MyFingerprint" -VarHost "MyVarHost" -Id "MyId" -IssuerName "MyIssuerName" -NotValidAfter "MyNotValidAfter" -NotValidBefore "MyNotValidBefore" -Port "MyPort" -SaveFilePath "MySaveFilePath" -State "ACCEPTED" -SubjectName "MySubjectName" -Type "HOST" -Verify $false # Certificate |  (optional)

# Update a certificate by ID
try {
    $Result = Update-Certificate -CertId $CertId -SaveFile $SaveFile -Certificate $Certificate
} catch {
    Write-Host ("Exception occurred when calling Update-Certificate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CertId** | **String**| Specify the certificate ID. | 
 **SaveFile** | **Boolean**| Specify whether to save certificate to file. | [optional] 
 **Certificate** | [**Certificate**](Certificate.md)|  | [optional] 

### Return type

[**Certificate**](Certificate.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Test-ClientCertificates"></a>
# **Test-ClientCertificates**
> void Test-ClientCertificates<br>

Validate client agent certificates

Validate the client agent certificates by checking if they exist and are trusted. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell

# Validate client agent certificates
try {
    $Result = Test-ClientCertificates
} catch {
    Write-Host ("Exception occurred when calling Test-ClientCertificates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

