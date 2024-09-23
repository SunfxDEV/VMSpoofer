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
isolation.tools.setPtrLocation.disable = "TRUE"
isolation.tools.getPtrLocation.disable = "TRUE"
isolation.tools.setVersion.disable = "TRUE"
isolation.tools.getVersion.disable = "TRUE"
isolation.tools.ghi.launchmenu.change = "TRUE"
isolation.tools.ghi.autologon.disable = "TRUE"
isolation.tools.hgfs.notify.enable = "TRUE"
isolation.tools.memSchedFakeSampleStats = "TRUE"
monitor_control.restrict_backdoor = "TRUE"
monitor_control.enable_softSVM = "TRUE"
monitor_control.virtual_rdtsc = "FALSE"
monitor_control.disable_directexec = "TRUE"


# @ VM Setup
- INTEL CPU with VT-x or AMD with AMD-V
- min 2GB RAM
- min 2 Cores (non virt)
- over 60GB Diskspace
