# Import active directory module for running AD cmdlets
Import-Module ActiveDirectory
  
#Store the data from ADUsers.csv in the $ADUsers variable
$ADUsers = Import-csv C:\Users\Administrator\Desktop\Test.csv

#Loop through each row containing user details in the CSV file 
foreach ($User in $ADUsers)
{
	#Read user data from each field in each row and assign the data to a variable as below
		
	#$Username 	= $User.username
	$Firstname 	= $User.Voornaam
	$Lastname 	= $User.Achternaam
	$Middlename = $User.Tussenvoegsel
    $jobtitle   = $User.Titel
    $department = $User.Afdeling


	#Check to see if the user already exists in AD
	if (Get-ADUser -F {SamAccountName -eq "$Firstname$Lastname"})
	{
		 #If user does exist, give a warning
		 Write-Warning "A user account with username $Username already exist in Active Directory."
	}
	else
	{
		#User does not exist then proceed to create the new user account
		
        #Account will be created in the OU provided by the $OU variable read from the CSV file
		New-ADUser `
            -SamAccountName "$Firstname $Lastname" `
            -UserPrincipalName "$Firstname $Lastname@winadpro.com" `
            -Name "$Firstname $Middlename $Lastname" `
            -GivenName $Firstname `
            -Surname $Lastname `
            -Enabled $True `
            -DisplayName "$Firstname $Lastname" `
            -Path "OU=Gebruikers,DC=crackhead,DC=nl" `
            -Company "Amerijck" `
            -Title $jobtitle `
            -Department $department `
            -AccountPassword (convertto-securestring @W3lkom2019! -AsPlainText -Force) -ChangePasswordAtLogon $True
            
	}
}
