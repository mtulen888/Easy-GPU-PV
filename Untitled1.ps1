$vm = "GPUPV"
if (Get-VMGpuPartitionAdapter -VMName $vm -ErrorAction SilentlyContinue) {

Remove-VMGpuPartitionAdapter -VMName $vm

}

Set-VM -GuestControlledCacheTypes $true -VMName $vm

Set-VM -LowMemoryMappedIoSpace 1Gb -VMName $vm

Set-VM -HighMemoryMappedIoSpace 16Gb -VMName $vm

Add-VMGpuPartitionAdapter -VMName $vm