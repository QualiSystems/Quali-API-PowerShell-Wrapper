Function Invoke-RequestManager
{
    param
    (
         [string]
         $Url,
         [Method]
         $Method,
         [switch]
		 $asJson = $false
    )

    if (Test-TokenExsists)
    {
        Try
        {
            $response = Invoke-Expression "Invoke-$Method -Uri $BaseURL/$Url"
            if ($response.count -eq 0) 
		    {
			    Write-Host -Object 'No results found'
		    }
		    else 
		    {
			    if ($asJson.IsPresent)
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

