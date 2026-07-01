# LogBundle
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BundleStartDate** | **String** | An ISO8601 date (specified in server time) of the start date of logging data to be included in the log bundle.  Bundle start date is the most recent date to be provided in the log bundle.  The date is inclusive of every hour of that day. For example, a date of 2015-05-11 is interpreted as 2015-05-11T23:59:59.999. NOTE: The date is assumed to be in the server timezone. | 
**Filename** | **String** | The filename of the bundle. Only populated if the bundle is COMPLETE. | [optional] 
**GenerationEndDateTime** | **System.DateTime** | An ISO8601 date and time with timezone (specified in server time) of the date that the log bundle was cancelled, failed, or completed. | [optional] 
**GenerationStartDateTime** | **System.DateTime** | An ISO8601 date and time with timezone that specifies when the job started according to the server time. | [optional] 
**HypervisorServerIds** | **String[]** | An array of host IDs of the Hyper-V cluster or server. An empty array or null indicates none. | [optional] 
**Id** | **String** | The unique ID of the log bundle resource. | [optional] 
**LogBundleFiles** | [**LogBundleFile[]**](LogBundleFile.md) | Contains a link that provides access to download the physical log bundle file. The file is not transferred over the message bus. Only populated if the bundle is COMPLETE. | [optional] 
**LogBundleFormula** | [**LogBundleFormula**](LogBundleFormula.md) |  | 
**PercentComplete** | **Int32** | If the log bundle is BUILDING, this value is a number from 0-100 representing the percentage of completion of the building log bundle. If the log bundle is FAILED, CANCELLED, COMPLETE, or DELETING, this value is 100. | [optional] 
**Platform** | **String** | The bundle creation request for the specified platform type. Supported values include &#39;STANDALONE&#39;, &#39;INTEGRATED_APPLIANCE&#39;, and &#39;SOFTWARE_INTEGRATED&#39;. | [optional] 
**SizeOnDiskInBytes** | **Int64** | The size of the log bundle in bytes. Only populated if the bundle is COMPLETE. | [optional] 
**SourceSystems** | **String[]** | Specifies source systems (&#39;DATA_MANAGER&#39;, &#39;INTEGRATED_STORAGE&#39;, &#39;SEARCH&#39;, &#39;V_PROXY&#39;, &#39;VM_PROXY&#39;, &#39;NAS_PROXY&#39;, &#39;K8S_PROXY&#39;, &#39;BV_PROXY&#39;, &#39;ARCHIVAL_PROXY&#39;, &#39;HYPERV_SERVER&#39;, &#39;NUTANIX_PROXY&#39;, &#39;CLOUD_DR_SERVER&#39;, &#39;REPORTING_SERVICE&#39;) of logs to be included in the log bundle.  The source systems &#39;SEARCH&#39; indicates to retrieve logs of Search Engines, separates logs from &#39;DATA_MANAGER&#39; source system. The source systems &#39;V_PROXY&#39; indicates to retrieve logs of all types of proxy, including &#39;VM_PROXY&#39;, &#39;NAS_PROXY&#39;, &#39;K8S_PROXY&#39;, &#39;BV_PROXY&#39;, &#39;ARCHIVAL_PROXY&#39;, &#39;NUTANIX_PROXY&#39;. The source systems &#39;INTEGRATED_STORAGE&#39; is deprecated. The source systems &#39;HYPERV_SERVER&#39; indicates to retrieve logs of Hyper-V cluster or server.  | [optional] 
**Status** | **String** | One of: [BUILDING, FAILED, CANCELLED, COMPLETED, DELETING]  Allowed states by operation include the following. POST: No status allowed. If provided, it is ignored. PUT: CANCELLED is allowed to cancel the job. Any other entry is ignored. DELETE: DELETE does not accept a body. DELETE uses the REST verb and not a PUT status update.  | [optional] 

## Examples

- Prepare the resource
```powershell
$LogBundle = Initialize-PpdmApiReferenceLogBundle  -BundleStartDate null `
 -Filename null `
 -GenerationEndDateTime null `
 -GenerationStartDateTime null `
 -HypervisorServerIds null `
 -Id null `
 -LogBundleFiles null `
 -LogBundleFormula null `
 -PercentComplete null `
 -Platform null `
 -SizeOnDiskInBytes null `
 -SourceSystems null `
 -Status null
```

- Convert the resource to JSON
```powershell
$LogBundle | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

