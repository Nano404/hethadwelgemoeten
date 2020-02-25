#
# Windows PowerShell script for AD DS Deployment
#
Install-WindowsFeature –Name AD-Domain-Services -IncludeManagementTools
Install-ADDSForest `
-DomainName "Amerijck" `
-CreateDnsDelegation:$false `
-DatabasePath "C:\AD_DS\NTDS" `
-DomainMode "WinThreshold" `
-DomainNetbiosName "Amerijck" `
-ForestMode "WinThreshold" `
-InstallDns:$true `
-LogPath "C:\AD_DS\NTDS" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\AD_DS\SYSVOL" `
-Force:$true
