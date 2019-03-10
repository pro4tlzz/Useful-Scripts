Import-Csv "C:\file.csv" | ForEach-Object {
$upn = $_.SamAccountName + “@domain” 
New-ADUser -Name $_.Name `
 -GivenName $_."GivenName" `
 -Surname $_."Surname" `
 -DisplayName $_."Name" `
 -SamAccountName  $_."samAccountName" `
 -UserPrincipalName  $upn `
 -Path $_."Path" `
 -EmailAddress $_."EmailAddress" `
 -ChangePasswordAtLogon:$True `
 -AccountPassword (ConvertTo-SecureString “” -AsPlainText -force) -Enabled $true
Add-ADPrincipalGroupMembership -Identity $_."samAccountName" -MemberOf ($_."Groups" -split',')
}