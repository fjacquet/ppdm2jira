# JiraIssueFields
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CascadingSelectFields** | [**JiraCascadingSelectField[]**](JiraCascadingSelectField.md) | Add or clear a cascading select field:   *  To add, specify &#x60;optionId&#x60; for both parent and child.  *  To clear the child, set its &#x60;optionId&#x60; to null.  *  To clear both, set the parent&#39;s &#x60;optionId&#x60; to null. | [optional] 
**ClearableNumberFields** | [**JiraNumberField[]**](JiraNumberField.md) | Add or clear a number field:   *  To add, specify a numeric &#x60;value&#x60;.  *  To clear, set &#x60;value&#x60; to &#x60;null&#x60;. | [optional] 
**ColorFields** | [**JiraColorField[]**](JiraColorField.md) | Add or clear a color field:   *  To add, specify the color &#x60;name&#x60;. Available colors are: &#x60;purple&#x60;, &#x60;blue&#x60;, &#x60;green&#x60;, &#x60;teal&#x60;, &#x60;yellow&#x60;, &#x60;orange&#x60;, &#x60;grey&#x60;, &#x60;dark purple&#x60;, &#x60;dark blue&#x60;, &#x60;dark green&#x60;, &#x60;dark teal&#x60;, &#x60;dark yellow&#x60;, &#x60;dark orange&#x60;, &#x60;dark grey&#x60;.  *  To clear, set the color &#x60;name&#x60; to an empty string. | [optional] 
**DatePickerFields** | [**JiraDateField[]**](JiraDateField.md) | Add or clear a date picker field:   *  To add, specify the date in &#x60;d/mmm/yy&#x60; format or ISO format &#x60;dd-mm-yyyy&#x60;.  *  To clear, set &#x60;formattedDate&#x60; to an empty string. | [optional] 
**DateTimePickerFields** | [**JiraDateTimeField[]**](JiraDateTimeField.md) | Add or clear the planned start date and time:   *  To add, specify the date and time in ISO format for &#x60;formattedDateTime&#x60;.  *  To clear, provide an empty string for &#x60;formattedDateTime&#x60;. | [optional] 
**IssueType** | [**JiraIssueTypeField**](JiraIssueTypeField.md) | Set the issue type field by providing an &#x60;issueTypeId&#x60;. | [optional] 
**LabelsFields** | [**JiraLabelsField[]**](JiraLabelsField.md) | Edit a labels field:   *  Options include &#x60;ADD&#x60;, &#x60;REPLACE&#x60;, &#x60;REMOVE&#x60;, or &#x60;REMOVE_ALL&#x60; for bulk edits.  *  To clear labels, use the &#x60;REMOVE_ALL&#x60; option with an empty &#x60;labels&#x60; array. | [optional] 
**MultipleGroupPickerFields** | [**JiraMultipleGroupPickerField[]**](JiraMultipleGroupPickerField.md) | Add or clear a multi-group picker field:   *  To add groups, provide an array of groups with &#x60;groupName&#x60;s.  *  To clear all groups, use an empty &#x60;groups&#x60; array. | [optional] 
**MultipleSelectClearableUserPickerFields** | [**JiraMultipleSelectUserPickerField[]**](JiraMultipleSelectUserPickerField.md) | Assign or unassign multiple users to/from a field:   *  To assign, provide an array of user &#x60;accountId&#x60;s.  *  To clear, set &#x60;users&#x60; to &#x60;null&#x60;. | [optional] 
**MultipleSelectFields** | [**JiraMultipleSelectField[]**](JiraMultipleSelectField.md) | Add or clear a multi-select field:   *  To add, provide an array of options with &#x60;optionId&#x60;s.  *  To clear, use an empty &#x60;options&#x60; array. | [optional] 
**MultipleVersionPickerFields** | [**JiraMultipleVersionPickerField[]**](JiraMultipleVersionPickerField.md) | Edit a multi-version picker field like Fix Versions/Affects Versions:   *  Options include &#x60;ADD&#x60;, &#x60;REPLACE&#x60;, &#x60;REMOVE&#x60;, or &#x60;REMOVE_ALL&#x60; for bulk edits.  *  To clear the field, use the &#x60;REMOVE_ALL&#x60; option with an empty &#x60;versions&#x60; array. | [optional] 
**MultiselectComponents** | [**JiraMultiSelectComponentField**](JiraMultiSelectComponentField.md) | Edit a multi select components field:   *  Options include &#x60;ADD&#x60;, &#x60;REPLACE&#x60;, &#x60;REMOVE&#x60;, or &#x60;REMOVE_ALL&#x60; for bulk edits.  *  To clear, use the &#x60;REMOVE_ALL&#x60; option with an empty &#x60;components&#x60; array. | [optional] 
**OriginalEstimateField** | [**JiraDurationField**](JiraDurationField.md) | Edit the original estimate field. | [optional] 
**Priority** | [**JiraPriorityField**](JiraPriorityField.md) | Set the priority of an issue by specifying a &#x60;priorityId&#x60;. | [optional] 
**RichTextFields** | [**JiraRichTextField[]**](JiraRichTextField.md) | Add or clear a rich text field:   *  To add, provide &#x60;adfValue&#x60;. Note that rich text fields only support ADF values.  *  To clear, use an empty &#x60;richText&#x60; object.  For ADF format details, refer to: [Atlassian Document Format](https://developer.atlassian.com/cloud/jira/platform/apis/document/structure). | [optional] 
**SingleGroupPickerFields** | [**JiraSingleGroupPickerField[]**](JiraSingleGroupPickerField.md) | Add or clear a single group picker field:   *  To add, specify the group with &#x60;groupName&#x60;.  *  To clear, set &#x60;groupName&#x60; to an empty string. | [optional] 
**SingleLineTextFields** | [**JiraSingleLineTextField[]**](JiraSingleLineTextField.md) | Add or clear a single line text field:   *  To add, provide the &#x60;text&#x60; value.  *  To clear, set &#x60;text&#x60; to an empty string. | [optional] 
**SingleSelectClearableUserPickerFields** | [**JiraSingleSelectUserPickerField[]**](JiraSingleSelectUserPickerField.md) | Edit assignment for single select user picker fields like Assignee/Reporter:   *  To assign an issue, specify the user&#39;s &#x60;accountId&#x60;.  *  To unassign an issue, set &#x60;user&#x60; to &#x60;null&#x60;.  *  For automatic assignment, set &#x60;accountId&#x60; to &#x60;-1&#x60;. | [optional] 
**SingleSelectFields** | [**JiraSingleSelectField[]**](JiraSingleSelectField.md) | Add or clear a single select field:   *  To add, specify the option with an &#x60;optionId&#x60;.  *  To clear, pass an option with &#x60;optionId&#x60; as &#x60;-1&#x60;. | [optional] 
**SingleVersionPickerFields** | [**JiraSingleVersionPickerField[]**](JiraSingleVersionPickerField.md) | Add or clear a single version picker field:   *  To add, specify the version with a &#x60;versionId&#x60;.  *  To clear, set &#x60;versionId&#x60; to &#x60;-1&#x60;. | [optional] 
**Status** | [**JiraStatusInput**](JiraStatusInput.md) |  | [optional] 
**TimeTrackingField** | [**JiraTimeTrackingField**](JiraTimeTrackingField.md) | Edit the time tracking field. | [optional] 
**UrlFields** | [**JiraUrlField[]**](JiraUrlField.md) | Add or clear a URL field:   *  To add, provide the &#x60;url&#x60; with the desired URL value.  *  To clear, set &#x60;url&#x60; to an empty string. | [optional] 

## Examples

- Prepare the resource
```powershell
$JiraIssueFields = Initialize-JiraApiReferenceJiraIssueFields  -CascadingSelectFields null `
 -ClearableNumberFields null `
 -ColorFields null `
 -DatePickerFields null `
 -DateTimePickerFields null `
 -IssueType null `
 -LabelsFields null `
 -MultipleGroupPickerFields null `
 -MultipleSelectClearableUserPickerFields null `
 -MultipleSelectFields null `
 -MultipleVersionPickerFields null `
 -MultiselectComponents null `
 -OriginalEstimateField null `
 -Priority null `
 -RichTextFields null `
 -SingleGroupPickerFields null `
 -SingleLineTextFields null `
 -SingleSelectClearableUserPickerFields null `
 -SingleSelectFields null `
 -SingleVersionPickerFields null `
 -Status null `
 -TimeTrackingField null `
 -UrlFields null
```

- Convert the resource to JSON
```powershell
$JiraIssueFields | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

