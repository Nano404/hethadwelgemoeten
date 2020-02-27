#Installs the abblity to import CVSto a Domain Controller
Install-Module -Name ImportExcel

Import-Module activedirectory 

$ADUsers = Import-csv C:\amerijck_personeelsbestand_2010

foreach ($User in $ADUsers)

{
	$Username 	= $User.username
	$Password 	= $User.password
	$Firstname 	= $User.Voornaam
	$Lastname 	= $User.Achternaam
	$OU 		= $User.ou #This field refers to the OU the user account is to be created in
    $email      = $User.E-mailadres
    $streetaddress = $User.Adres
    $city       = $User.Plaats
    $zipcode    = $User.Postcode
    $telephone  = $User.Mobiel
    $jobtitle   = $User.Functie
    $company    = Amerijck
    $department = $User.Afdeling
    $Password = $User.Passwords
	
	
	#Check to see if the user already exists in AD
	if (Get-ADUser -F {SamAccountName -eq $Username})
	{
		 #If user does exist, give a warning
		 Write-Warning "A user account with username $Username already exist in Active Directory."
	}
	else
	{
		#User does not exist then proceed to create the new user account
		
        #Account will be created in the OU provided by the $OU variable read from the CSV file
		New-ADUser `
            -SamAccountName $Username `
            -UserPrincipalName $email				#"$Username@winadpro.com" `
            -Name "$Firstname $Lastname" `
            -GivenName $Firstname `
            -Surname $Lastname `
            -Enabled $True `
            -DisplayName "$Lastname, $Firstname" `
            -Path $OU `
            -City $city `
            -Company $company `
            -State $state `
            -StreetAddress $streetaddress `
            -OfficePhone $telephone `
            -EmailAddress $email `
            -Title $jobtitle `
            -Department $department `
            -AccountPassword (convertto-securestring $Password -AsPlainText -Force) -ChangePasswordAtLogon $True
            
	}
}