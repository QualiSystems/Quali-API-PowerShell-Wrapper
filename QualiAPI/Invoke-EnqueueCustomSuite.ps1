Function Invoke-EnqueueCustomSuite
{
    param
    (
         [string]
         $SuiteName,
		 [string]
		 $SuiteDetailsJson
    )

    Try
	{
	    $SuiteNameEnc = [System.Web.HttpUtility]::UrlEncode($SuiteName)
	    $suiteDetails = Get-SuiteTemplateDetails -SuiteName "$SuiteNameEnc"
		
		$suiteId = Invoke-Post -Uri "$BaseURL/Scheduling/Suites" -body ($SuiteDetailsJson)
		
		Write-Host -Object 'Custom suite enqueued!' -ForegroundColor Green
		
	}
	Catch
	{
		write-host "ERROR:" -ForegroundColor Red
        Write-host $_ -ForegroundColor Red
	}

    return $suiteId
}
