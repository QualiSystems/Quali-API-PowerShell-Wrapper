Function Invoke-Login
{
    param
    (
        [string]
        $User = 'MyUser', 
        [string]
        $Password = 'MuPassword',
        [string]
        $Domain = 'MyDomain',
        [string]
        $TargetHost = 'ServerIp'
    )
    Set-Variable -Name 'BaseURL' -Value "http://$TargetHost`:9000/Api" -Scope Global
    Set-Variable -Name 'ContentTypeJson' -Value 'application/json' -Scope Global	

    Try
	{
        $body = '{"Username": "' + $User + '" ,"Password": "' + $Password + '" ,"Domain": "' + $Domain + '" ,"Token":null}'
		$Auth = Invoke-Put -Uri "$BaseURL/Auth/Login" -Body $body
		Write-Host 'Authentication Token set to: ' $Auth
		Write-Host 'Setting ' $BaseURL 'as base url' -ForegroundColor Magenta
		Set-Variable -Name 'Auth' -Value $Auth -Scope Global
		Write-Host -Object 'You Are Now Logged In!' -ForegroundColor Green
	}
	Catch
	{
		write-host "ERROR:" -ForegroundColor Red
        Write-host $_ -ForegroundColor Red
	}

    return $Auth
}
