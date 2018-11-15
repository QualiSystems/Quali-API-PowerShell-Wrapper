Function Get-SuiteStatus
{
    param
    (
         [Parameter(Mandatory=$true,ValueFromPipeline=$true)]
         $SuiteId,
         [switch]
		 $asJson = $false
    )
    Invoke-RequestManager -Url "/Scheduling/Suites/Status/$SuiteId" -Method GET -asJson:$asJson
}

