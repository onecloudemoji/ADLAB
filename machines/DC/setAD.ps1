Install-windowsfeature AD-domain-services

Import-Module ADDSDeployment

$encrypted = ConvertTo-SecureString 'Thisisalongpassword12345' -asplaintext -force

Install-ADDSForest -CreateDnsDelegation:$false ` -DatabasePath "C:\Windows\NTDS" ` -DomainMode "Win2012R2" ` -DomainName "dirty_sprite.net" ` -DomainNetbiosName "dirty_sprite" ` -ForestMode "Win2012R2" ` -InstallDns:$true ` -LogPath "C:\Windows\NTDS" ` -NoRebootOnCompletion:$true ` -SysvolPath "C:\Windows\SYSVOL" ` -Force:$true -SafeModeAdministratorPassword $encrypted

Install-WindowsFeature RSAT-ADDS

shutdown /r /t 0

exit