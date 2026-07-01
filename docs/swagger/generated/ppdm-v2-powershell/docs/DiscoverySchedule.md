# DiscoverySchedule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** | Whether or not the schedule should be enabled. The default discovery is a DAILY scheduled discovery starting at 2:00 AM that is disabled by default (enabled set to false). | [optional] [default to $false]
**EndHour** | **Int32** | The hour when the scheduled discovery ends. The default discovery is a disabled DAILY scheduled discovery starting at 2:00 AM. | [optional] [default to 0]
**EndMinute** | **Int32** | The minute when the scheduled discovery ends. The default discovery is a disabled DAILY scheduled discovery starting at 2:00 AM. | [optional] [default to 0]
**HourlyFrequency** | **Int32** | The number of hours between HOURLY scheduled discoveries. The default discovery is a disabled DAILY scheduled discovery starting at 2:00 AM. | [optional] [default to 0]
**MinutesFrequency** | **Int32** | The number of minutes between MINUTES scheduled discoveries. The default discovery is a disabled DAILY scheduled discovery starting at 2:00 AM. | [optional] [default to 0]
**StartHour** | **Int32** | The hour when the scheduled discovery starts. The default discovery is a disabled DAILY scheduled discovery starting at 2:00 AM. | [optional] [default to 2]
**StartMinute** | **Int32** | The minute when the scheduled discovery starts. The default discovery is a disabled DAILY scheduled discovery starting at 2:00 AM. | [optional] [default to 0]
**Type** | **String** | The type of discovery schedule to start. The default discovery is a disabled DAILY scheduled discovery starting at 2:00 AM. | [optional] [default to "DAILY"]

## Examples

- Prepare the resource
```powershell
$DiscoverySchedule = Initialize-PpdmApiReferenceDiscoverySchedule  -Enabled null `
 -EndHour null `
 -EndMinute null `
 -HourlyFrequency null `
 -MinutesFrequency null `
 -StartHour null `
 -StartMinute null `
 -Type null
```

- Convert the resource to JSON
```powershell
$DiscoverySchedule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

