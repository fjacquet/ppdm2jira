# JiraApiReference.JiraApiReference\Api.IssueRedactionApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-RedactionStatus**](IssueRedactionApi.md#Get-RedactionStatus) | **GET** /rest/api/3/redact/status/{jobId} | Get redaction status
[**Invoke-Redact**](IssueRedactionApi.md#Invoke-Redact) | **POST** /rest/api/3/redact | Redact


<a id="Get-RedactionStatus"></a>
# **Get-RedactionStatus**
> RedactionJobStatusResponse Get-RedactionStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JobId] <String><br>

Get redaction status

Retrieves the current status of a redaction job ID.  The jobStatus will be one of the following:   *  IN\_PROGRESS - The redaction job is currently in progress  *  COMPLETED - The redaction job has completed successfully.  *  PENDING - The redaction job has not started yet

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$JobId = "MyJobId" # String | Redaction job id

# Get redaction status
try {
    $Result = Get-RedactionStatus -JobId $JobId
} catch {
    Write-Host ("Exception occurred when calling Get-RedactionStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **JobId** | **String**| Redaction job id | 

### Return type

[**RedactionJobStatusResponse**](RedactionJobStatusResponse.md) (PSCustomObject)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-Redact"></a>
# **Invoke-Redact**
> String Invoke-Redact<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BulkRedactionRequest] <PSCustomObject><br>

Redact

Submit a job to redact issue field data. This will trigger the redaction of the data in the specified fields asynchronously.  The redaction status can be polled using the job id.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ContentItem = Initialize-ContentItem -EntityId "summary" -EntityType "issuefieldvalue" -Id "10000"
$RedactionPosition = Initialize-RedactionPosition -AdfPointer "/content/0/content/0/text" -ExpectedText "ODFiNjM3ZDhmY2QyYzZkYTYzNTllNjk2MzExM2ExMTcwZGU3OTVlNGI3MjViODRkMWUwYjRjZmQ5ZWM1OGNlOQ==" -VarFrom 14 -To 20
$SingleRedactionRequest = Initialize-SingleRedactionRequest -ContentItem $ContentItem -ExternalId "51101de6-d001-429d-a095-b2b96dd57fcb" -Reason "PII data" -RedactionPosition $RedactionPosition

$BulkRedactionRequest = Initialize-BulkRedactionRequest -Redactions $SingleRedactionRequest # BulkRedactionRequest | List of redaction requests

# Redact
try {
    $Result = Invoke-Redact -BulkRedactionRequest $BulkRedactionRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-Redact: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BulkRedactionRequest** | [**BulkRedactionRequest**](BulkRedactionRequest.md)| List of redaction requests | 

### Return type

**String**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

