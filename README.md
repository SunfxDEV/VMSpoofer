# VMSpoofer
Basic Anti-VM Detection Implementation
The following things have been spoofed

# REGISTRY
deleting HKLM\SOFTWARE\VMWare isnt done automatically yet
BaseBoardManufacturer
\BIOS\BaseBoardManufacturer
\BIOS\BaseBoardProduct
\BIOS\BaseBoardVersion'
\BIOS\BiosMajorRelease
\BIOS\BiosMinorRelease
\BIOS\BIOSVendor
\BIOS\BIOSVersion
\BIOS\SystemManufacturer
\BIOS\SystemProductName
\BIOS\SystemFamily
\BIOS\SystemSKU
\BIOS\SystemVersion



# Doesnt spoof
- CPU Timestamp Counter (rdtsc) VM exit


# VMX Changes (In VM Dir)
## change
ethernet0.generatedAddress = "C6:3C:A1:73:4B:22"

## add
hypervisor.cpuid.v0 = false
isolation.tools.setVersion.disable = "TRUE"
isolation.tools.getVersion.disable = "TRUE"
isolation.tools.ghi.launchmenu.change = "TRUE"
isolation.tools.ghi.autologon.disable = "TRUE"
isolation.tools.hgfs.notify.enable = "TRUE"
isolation.tools.memSchedFakeSampleStats = "TRUE"
monitor_control.restrict_backdoor = "TRUE"
monitor_control.enable_softSVM = "TRUE"
