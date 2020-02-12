#
# Windows PowerShell script for AD DS Deployment
#
Install-WindowsFeature –Name AD-Domain-Services -IncludeManagementTools
Install-ADDSForest `
-DomainName &quot;Bellaze.local&quot; `
-CreateDnsDelegation:$false `
-DatabasePath &quot;C:\AD_DS\NTDS&quot; `
-DomainMode &quot;WinThreshold&quot; `
-DomainNetbiosName &quot;BELLAZE&quot; `
-ForestMode &quot;WinThreshold&quot; `
-InstallDns:$true `
-LogPath &quot;C:\AD_DS\NTDS&quot; `
-NoRebootOnCompletion:$false `
-SysvolPath &quot;C:\AD_DS\SYSVOL&quot; `
-Force:$true