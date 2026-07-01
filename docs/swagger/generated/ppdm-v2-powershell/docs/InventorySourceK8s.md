# InventorySourceK8s
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Configurations** | [**InventorySourceK8sConfigurationsInner[]**](InventorySourceK8sConfigurationsInner.md) | List of pod configurations or config map entries | [optional] 
**ControllerVersion** | **String** | The version of the PowerProtect Data Manager Kubernetes control and data planes as read from the powerprotect/ppdm-controller-config config map. | [optional] 
**DistributionType** | **String** | Distribution type can be one of TANZU_GUEST_CLUSTER, VANILLA_ON_VSPHERE or NON_VSPHERE | [optional] 
**RolloutAt** | **String** | The timestamp of the last rollout operation. | [optional] 
**RolloutStatus** | **String** | The status of the last components rollout operation on the cluster. | [optional] 
**UpdateMode** | **String** | The AUTO update mode implies that the Kubernetes components will be updated automatically with no user involvement, following the update of CNDM. The MANUAL upgrade mode implies that the updates of the Kubernetes components will be manually initiated by the user. | [optional] 
**VCenterId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InventorySourceK8s = Initialize-PpdmApiReferenceInventorySourceK8s  -Configurations null `
 -ControllerVersion null `
 -DistributionType null `
 -RolloutAt null `
 -RolloutStatus null `
 -UpdateMode null `
 -VCenterId null
```

- Convert the resource to JSON
```powershell
$InventorySourceK8s | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

