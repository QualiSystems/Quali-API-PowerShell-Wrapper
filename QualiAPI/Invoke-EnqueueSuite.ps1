Function Invoke-EnqueueSuite
{
    param
    (
         [string]
         $SuiteName
    )

    Try
	{
	    $SuiteNameEnc = [System.Web.HttpUtility]::UrlEncode($SuiteName)
	    $suiteDetails = Get-SuiteTemplateDetails -SuiteName "$SuiteNameEnc"
		$suiteDetails.SuiteName = $SuiteName
		
		$suiteId = Invoke-Post -Uri "$BaseURL/Scheduling/Suites" -body ($suiteDetails | ConvertTo-Json -Depth 15)
		
		Write-Host -Object 'Suite enqueued!' -ForegroundColor Green
		
	}
	Catch
	{
		write-host "ERROR:" -ForegroundColor Red
        Write-host $_ -ForegroundColor Red
	}

    return $suiteId
}
