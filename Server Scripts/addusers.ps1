#New OU's
New-ADOrganizationalUnit -Name "Locaties" -Path "DC=ABC-TRANSPORT,DC=NL"
New-ADOrganizationalUnit -Name "Den Helder" -Path "OU=Locaties,DC=ABC-TRANSPORT,DC=NL"
New-ADOrganizationalUnit -Name "Yrseke" -Path "OU=Locaties,DC=ABC-TRANSPORT,DC=NL"

#Ad Groups
New-ADGroup -Name "Chauffeurs" -GroupCategory Security -GroupScope Global -DisplayName "Chauffeurs" -Path "OU=Locaties,DC=ABC-TRANSPORT,DC=NL" -Description "Members of this group are Chauffeur"
New-ADGroup -Name "Directie" -GroupCategory Security -GroupScope Global -DisplayName "Chauffeurs" -Path "OU=Locaties,DC=ABC-TRANSPORT,DC=NL" -Description "Members of this group are Directie"
New-ADGroup -Name "Planning" -GroupCategory Security -GroupScope Global -DisplayName "Chauffeurs" -Path "OU=Locaties,DC=ABC-TRANSPORT,DC=NL" -Description "Members of this group are Planing"
New-ADGroup -Name "HR" -GroupCategory Security -GroupScope Global -DisplayName "Chauffeurs" -Path "OU=Locaties,DC=ABC-TRANSPORT,DC=NL" -Description "Members of this group are HR"
New-ADGroup -Name "Financien" -GroupCategory Security -GroupScope Global -DisplayName "Chauffeurs" -Path "OU=Locaties,DC=ABC-TRANSPORT,DC=NL" -Description "Members of this group are Financien"

#Users
New-ADUser -Name "Freek Haringen" -GivenName "Freek" -Surname "Haringen" -SamAccountName "F.Haringen" -UserPrincipalName "freek.haringen@abc-transport.nl" -Path "OU=Den Helder,OU=Locaties,DC=ABC-TRANSPORT,DC=NL" -AccountPassword(ConvertTo-SecureString -AsPlainText "W@chtw00rd123" -Force) -Enabled $true

New-ADUser -Name "Richard De Weel" -GivenName "Richard" -Surname "De Weel" -SamAccountName "R.deWeel"  -UserPrincipalName "richard.deweel@abc-transport.nl" -Path "OU=Den Helder,OU=Locaties,DC=ABC-TRANSPORT,DC=NL" -AccountPassword(ConvertTo-SecureString -AsPlainText "W@chtw00rd123" -Force) -Enabled $true

New-ADUser -Name "Wendy Hertogh " -GivenName "Wendy" -Surname "Hertogh" -SamAccountName "W.Hartogh"  -UserPrincipalName "wendy.hertogh@abc-transport.nl" -Path "OU=Den Helder,OU=Locaties,DC=ABC-TRANSPORT,DC=NL" -AccountPassword(ConvertTo-SecureString -AsPlainText "W@chtw00rd123" -Force) -Enabled $true

New-ADUser -Name "Harm van Vliet" -GivenName "Harm" -Surname "van Vliet" -SamAccountName "H.vanVliet"  -UserPrincipalName "harm.vanvliet@abc-transport.nl" -Path "OU=Yrseke,OU=Locaties,DC=ABC-TRANSPORT,DC=NL" -AccountPassword(ConvertTo-SecureString -AsPlainText "W@chtw00rd123" -Force) -Enabled $true

New-ADUser -Name "Faraj Hadad" -GivenName "Faraj" -Surname "Hadad" -SamAccountName "F.hadad"  -UserPrincipalName "faraj.hadad@abc-transport.nl" -Path "OU=Den Helder,OU=Locaties,DC=ABC-TRANSPORT,DC=NL" -AccountPassword(ConvertTo-SecureString -AsPlainText "W@chtw00rd123" -Force) -Enabled $true

New-ADUser -Name "Willem Mereijn" -GivenName "Willem" -Surname "Mereijn" -SamAccountName "W.Mereijn"  -UserPrincipalName "willem.mereijn@abc-transport.nl" -Path "OU=Den Helder,OU=Locaties,DC=ABC-TRANSPORT,DC=NL" -AccountPassword(ConvertTo-SecureString -AsPlainText "W@chtw00rd123" -Force) -Enabled $true

New-ADUser -Name "Leo Hamstra" -GivenName "Leo" -Surname "Hamstra" -SamAccountName "L.Hamstra"  -UserPrincipalName "leo.hamstra@abc-transport.nl" -Path "OU=Den Helder,OU=Locaties,DC=ABC-TRANSPORT,DC=NL" -AccountPassword(ConvertTo-SecureString -AsPlainText "W@chtw00rd123" -Force) -Enabled $true

New-ADUser -Name "Franziska Straub" -GivenName "Franziska" -Surname "Straub" -SamAccountName "F.Straub"  -UserPrincipalName "franziska.straub@abc-transport.nl" -Path "OU=Den Helder,OU=Locaties,DC=ABC-TRANSPORT,DC=NL" -AccountPassword(ConvertTo-SecureString -AsPlainText "W@chtw00rd123" -Force) -Enabled $true

New-ADUser -Name "Onno Wilms" -GivenName "Onno" -Surname "Wilms" -SamAccountName "O.Wilms"  -UserPrincipalName "onno.wilms@abc-transport.nl" -Path "OU=Yrseke,OU=Locaties,DC=ABC-TRANSPORT,DC=NL" -AccountPassword(ConvertTo-SecureString -AsPlainText "W@chtw00rd123" -Force) -Enabled $true

New-ADUser -Name "Henk Bobeldijk" -GivenName "Henk" -Surname "Bobeldijk" -SamAccountName "H.Bobeldijk"  -UserPrincipalName "henk.bobeldijk@abc-transport.nl" -Path "OU=Yrseke,OU=Locaties,DC=ABC-TRANSPORT,DC=NL" -AccountPassword(ConvertTo-SecureString -AsPlainText "W@chtw00rd123" -Force) -Enabled $true

#User to Groups 
Add-ADGroupMember -Identity "Chauffeurs" -Members W.Mereijn, L.Hamstra, F.Straub, O.Wilms, H.Bobeldijk
Add-ADGroupMember -Identity "Directie" -Members F.Haringen
Add-ADGroupMember -Identity "Planning" -Members W.Hartogh, H.vanVliet
Add-ADGroupMember -Identity "HR" -Members F.Hadad
Add-ADGroupMember -Identity "Financien" -Members R.deWeel

pause
