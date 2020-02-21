
New-Item "C:\SharedFolders\Directie" –type directory
New-Item "C:\SharedFolders\HR" –type directory
New-Item "C:\SharedFolders\Planning" –type directory
New-Item "C:\SharedFolders\Financien" –type directory
New-Item "C:\SharedFolders\Chauffeur" –type directory
New-Item "C:\SharedFolders\IT" –type directory

New-SMBShare –Name "Directie" –Path "C:\SharedFolders\Directie" –FullAccess "Directie" 
New-SMBShare –Name "HR" –Path "C:\SharedFolders\HR" –FullAccess @("Directie", "HR" ) -ReadAccess "Financien"
New-SMBShare –Name "Planning" –Path "C:\SharedFolders\Planning" –FullAccess @("Directie", "Planning") -ReadAccess @("Financien", "HR")
New-SMBShare –Name "Financien" –Path "C:\SharedFolders\Financien" –FullAccess @("Directie", "Financien")
New-SMBShare –Name "Chauffeur" –Path "C:\SharedFolders\Chauffeur" –FullAccess @("Directie", "Planning", "Chauffeurs") -ReadAccess @("Financien", "HR")
New-SMBShare –Name "IT" –Path "C:\SharedFolders\IT" –FullAccess @("Directie", "IT")


#Grant-SmbShareAccess -Name "Chauffeur" -AccountName "Chauffeur" -AccessRight Full 
