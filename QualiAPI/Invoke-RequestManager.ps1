Function Invoke-RequestManager
{
    param
    (
         [string]
         $Url,
         [Method]
         $Method,
		 [string]
         $body,
         [switch]
		 $asJson = $false
    )

    if (Test-TokenExsists)
    {
        Try
        {
		    if ([string]::IsNullOrEmpty($body))
			{
				$expression = "Invoke-$Method -Uri '$BaseURL/$Url'"
			}
			else
			{
				$expression = "Invoke-$Method -Uri '$BaseURL/$Url' -body ""$body"""
			}

            $response = Invoke-Expression $expression
			
            if ($response.count -eq 0) 
		    {
			    Write-Host -Object 'No results found'
		    }
		    else 
		    {
			    if ($asJson.IsPresent -and $asJson -eq $true)
			    {
				    return $response | ConvertTo-Json
			    }
			    else
			    {
				    return $response
			    }
		    }
        }
        Catch
        {
    		write-host "ERROR:" -ForegroundColor Red
            Write-host $_ -ForegroundColor Red
        }
    }
}

