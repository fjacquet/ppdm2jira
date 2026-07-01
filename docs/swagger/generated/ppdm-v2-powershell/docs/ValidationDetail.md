# ValidationDetail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | Message received after upload a package. | [optional] 
**MessageDetails** | [**MessageDetails**](MessageDetails.md) |  | [optional] 
**ResultType** | **String** | Type of validation result. | [optional] 
**SubComponent** | **String** | Name of subcomponent. | [optional] 
**ValidateTime** | **System.DateTime** | Date of the validation. | [optional] 
**ValidationName** | **String** | The validation name. | [optional] 

## Examples

- Prepare the resource
```powershell
$ValidationDetail = Initialize-PpdmApiReferenceValidationDetail  -Message null `
 -MessageDetails null `
 -ResultType null `
 -SubComponent null `
 -ValidateTime null `
 -ValidationName null
```

- Convert the resource to JSON
```powershell
$ValidationDetail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

