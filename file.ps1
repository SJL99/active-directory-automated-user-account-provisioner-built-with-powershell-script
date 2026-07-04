Import-Module ActiveDirectory
$targetOU = "OU=IT Department,DC=homelab,DC=network"
$csv = Join-Path $PSScriptRoot "new_hires.csv"

foreach ($user in Import-Csv $csv) {
    $uName = ($user.FirstName.Substring(0,1) + $user.LastName).ToLower()
    $pass = ConvertTo-SecureString "Welcome123!" -AsPlainText -Force

    if (!(Get-ADUser -Filter "SamAccountName -eq '$uName'" -ErrorAction SilentlyContinue)) {
        New-ADUser -SamAccountName $uName -UserPrincipalName "$uName@homelab.network" -Name "$($user.FirstName) $($user.LastName)" -GivenName $user.FirstName -Surname $user.LastName -Department $user.Department -Title $user.JobTitle -Path $targetOU -AccountPassword $pass -Enabled $true
        Write-Host "SUCCESS: Provisioned $uName" -ForegroundColor Green
    }
}