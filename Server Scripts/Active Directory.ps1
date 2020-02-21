#
# Windows PowerShell script for AD DS Deployment
#
Install-WindowsFeature –Name AD-Domain-Services -IncludeManagementTools
Install-ADDSForest `
-DomainName "Bellaze.local" `
-CreateDnsDelegation:$false `
-DatabasePath "C:\AD_DS\NTDS" `
-DomainMode "WinThreshold" `
-DomainNetbiosName "BELLAZE" `
-ForestMode "WinThreshold" `
-InstallDns:$true `
-LogPath "C:\AD_DS\NTDS" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\AD_DS\SYSVOL" `
-Force:$true
