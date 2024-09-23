Option Explicit

Dim SystemKeyPath
Dim objShell

If Not WScript.Arguments.Named.Exists("elevate") Then
  CreateObject("Shell.Application").ShellExecute WScript.FullName _
    , """" & WScript.ScriptFullName & """ /elevate", "", "runas", 1
  WScript.Quit
End If

WScript.Echo "DO NOT RUN ON NON-VIRTUALIZED MACHINES. Taskkill immediately if so."

SystemKeyPath = "HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System" 


Set objShell = CreateObject("WScript.Shell")

On Error Resume Next
objShell.RegWrite SystemKeyPath & "\" & "BaseBoardManufacturer", "LENOVO", "REG_SZ" '
objShell.RegWrite SystemKeyPath & "\" & "\BIOS\BaseBoardManufacturer", "LENOVO", "REG_SZ" '
objShell.RegWrite SystemKeyPath & "\" & "\BIOS\BaseBoardProduct", "LNVNB161216", "REG_SZ" '
objShell.RegWrite SystemKeyPath & "\" & "\BIOS\BaseBoardVersion", "SDK0T76463 WIN", "REG_SZ" '
objShell.RegWrite SystemKeyPath & "\" & "\BIOS\BiosMajorRelease", "2", "REG_DWORD" '
objShell.RegWrite SystemKeyPath & "\" & "\BIOS\BiosMinorRelease", "37", "REG_DWORD" '
objShell.RegWrite SystemKeyPath & "\" & "\BIOS\BIOSVendor", "LENOVO", "REG_SZ" '
objShell.RegWrite SystemKeyPath & "\" & "\BIOS\BIOSVersion", "H4CN37WW(V2.06)", "REG_SZ" '
objShell.RegWrite SystemKeyPath & "\" & "\BIOS\SystemManufacturer", "Ideapad Gaming 3 15IHU6", "REG_SZ" '
objShell.RegWrite SystemKeyPath & "\" & "\BIOS\SystemProductName", "Ideapad Gaming 3 15IHU6", "REG_SZ" '
objShell.RegWrite SystemKeyPath & "\" & "\BIOS\SystemFamily", "82K1", "REG_SZ" '
objShell.RegWrite SystemKeyPath & "\" & "\BIOS\SystemSKU", "LENOVO_MT_82K1_BU_idea_FM_IdeaPad Gaming 3 15IHU6", "REG_SZ" '
objShell.RegWrite SystemKeyPath & "\" & "\BIOS\SystemVersion", "IdeaPad Gaming 3 15IHU6", "REG_SZ" '


If Err.Number <> 0 Then
    WScript.Echo "Error writing to the registry: " & Err.Description
Else
    WScript.Echo "System and BIOS Registrys changed to reflect a Lenovo System. Reboot to apply changes. ~ Sunfx"
End If
On Error GoTo 0

Set objShell = Nothing
