# Activity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Actions** | [**ActivityActions**](ActivityActions.md) |  | [optional] 
**ActivityInitiatedType** | [**ActivityInitiatedType**](ActivityInitiatedType.md) |  | [optional] 
**Asset** | [**Resource**](Resource.md) |  | [optional] 
**AverageBytesTransferred** | **Double** | This parameter is for running job group only. Average over the bytes transferred by completed jobs inside the job group. For activities that support detailed stats, the average for successfully completed activities over the number of protected assets. | [optional] 
**AverageDuration** | **Double** | This parameter is for running job group only. Average over the completed jobs inside the job group.  For activities that support detailed stats, the average for successfully completed activities over the number of protected assets. | [optional] 
**Category** | [**ActivityCategory**](ActivityCategory.md) |  | 
**ClassType** | **String** | The type of activity. JOB_GROUP is a group of jobs. JOB is an activity that can be monitored and managed. TASK is a step within a job that can be monitored. | 
**CreateTime** | **System.DateTime** | The create time of the activity. Follows ISO8601 date format. | 
**DestinationSystem** | [**Resource**](Resource.md) |  | [optional] 
**DisplayId** | **String** | The displayId of the activity. This is only assigned to JOB_GROUP and JOB activity type that do not have a parentId. | [optional] 
**Duration** | **Int64** | The total time taken for a running or completed activity. | [optional] 
**EndTime** | **System.DateTime** | The end time of the activity. Follows ISO8601 date format. | [optional] 
**ExtendedData** | [**ExtendedData**](ExtendedData.md) |  | [optional] 
**ExternalId** | **String** | If this activity belongs to an external system, the external ID points to the activity ID on that system. | [optional] 
**FailedToRetrieveStats** | [**StatsNotAvailableInfo[]**](StatsNotAvailableInfo.md) |  | [optional] 
**GroupByOptions** | **String[]** | This property represents a list of options by which asset-level protection activities can be grouped. | [optional] 
**HasChildren** | **Boolean** | This parameter is true if the activity has a child. | [optional] 
**HasLogs** | **Boolean** | This parameter is true if the activity or its child has a log file. | [optional] 
**VarHost** | [**Resource**](Resource.md) |  | [optional] 
**Id** | **String** | The ID of the activity. | 
**InfrastructureSource** | **String** | Information about the source of a virtual machine restore operation. | [optional] 
**InitiatedType** | **String** | The activity initiation type. (Deprecated, use activityInitiatedType instead) | [optional] 
**InterventionGroupId** | **String** | References to the intervention group that this activity belongs to, or null if it does not belong to any group. | [optional] 
**InventorySource** | [**Resource**](Resource.md) |  | [optional] 
**LogExport** | [**Resource**](Resource.md) |  | [optional] 
**LogInfo** | [**ActivityLogInfo**](ActivityLogInfo.md) |  | [optional] 
**Name** | **String** | The name of the activity. | 
**NextScheduledTime** | **System.DateTime** | The next scheduled time of the activity. Follows ISO8601 date format. | [optional] 
**Owner** | [**Owner**](Owner.md) |  | [optional] 
**ParentId** | **String** | The parent ID of activity. | [optional] 
**Progress** | **Int32** | Value between 0 and 100 representing % completion for activity. | 
**ProgressIssues** | **String** | Issues that arise during the progress of the activity. | [optional] 
**ProtectionPolicy** | [**Resource**](Resource.md) |  | [optional] 
**RestoreGroup** | [**Resource**](Resource.md) |  | [optional] 
**RestorePlan** | [**Resource**](Resource.md) |  | [optional] 
**Result** | [**ActivityResult**](ActivityResult.md) |  | [optional] 
**ScheduleInfo** | [**ScheduleInfo**](ScheduleInfo.md) |  | [optional] 
**Source** | [**ActivitySource**](ActivitySource.md) |  | [optional] 
**SourceCopy** | [**Resource**](Resource.md) |  | [optional] 
**SourceStorageSystem** | [**Resource**](Resource.md) |  | [optional] 
**SourceSystem** | [**Resource**](Resource.md) |  | [optional] 
**StartTime** | **System.DateTime** | The start time of the activity. Follows ISO8601 date format. | [optional] 
**State** | **String** | The state of the activity. | 
**StateDetails** | [**StateDetails**](StateDetails.md) |  | [optional] 
**StateSummaries** | [**ActivityStateSummaries**](ActivityStateSummaries.md) |  | [optional] 
**Stats** | [**ActivityStats**](ActivityStats.md) |  | [optional] 
**StatsNotSupportedByApp** | [**StatsNotAvailableInfo[]**](StatsNotAvailableInfo.md) |  | [optional] 
**StatsRequireAgentUpgrade** | [**StatsNotAvailableInfo[]**](StatsNotAvailableInfo.md) |  | [optional] 
**Steps** | [**ActivityStep[]**](ActivityStep.md) |  | [optional] 
**StorageSystem** | [**Resource**](Resource.md) |  | [optional] 
**Subcategory** | **String** | The subcategory within a category. | [optional] 
**SystemId** | **String** | The resource upon which this activity is performed belongs to this systemId.  As of 19.16, this is used in the context of Business Continuity. | [optional] 
**ThrottlingInfo** | [**ThrottlingInfo**](ThrottlingInfo.md) |  | [optional] 
**UpdateTime** | **System.DateTime** | The update time of the activity. Follows ISO8601 date format. | 
**UserNote** | [**ActivityUserNote**](ActivityUserNote.md) |  | [optional] 
**Username** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Activity = Initialize-PpdmApiReferenceActivity  -Actions null `
 -ActivityInitiatedType null `
 -Asset null `
 -AverageBytesTransferred null `
 -AverageDuration null `
 -Category null `
 -ClassType null `
 -CreateTime null `
 -DestinationSystem null `
 -DisplayId null `
 -Duration null `
 -EndTime null `
 -ExtendedData null `
 -ExternalId null `
 -FailedToRetrieveStats null `
 -GroupByOptions null `
 -HasChildren null `
 -HasLogs null `
 -VarHost null `
 -Id null `
 -InfrastructureSource null `
 -InitiatedType null `
 -InterventionGroupId null `
 -InventorySource null `
 -LogExport null `
 -LogInfo null `
 -Name null `
 -NextScheduledTime null `
 -Owner null `
 -ParentId null `
 -Progress null `
 -ProgressIssues null `
 -ProtectionPolicy null `
 -RestoreGroup null `
 -RestorePlan null `
 -Result null `
 -ScheduleInfo null `
 -Source null `
 -SourceCopy null `
 -SourceStorageSystem null `
 -SourceSystem null `
 -StartTime null `
 -State null `
 -StateDetails null `
 -StateSummaries null `
 -Stats null `
 -StatsNotSupportedByApp null `
 -StatsRequireAgentUpgrade null `
 -Steps null `
 -StorageSystem null `
 -Subcategory null `
 -SystemId null `
 -ThrottlingInfo null `
 -UpdateTime null `
 -UserNote null `
 -Username null
```

- Convert the resource to JSON
```powershell
$Activity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

