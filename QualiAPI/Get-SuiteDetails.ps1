Function Get-SuiteDetails
{
    param
    (
         [Parameter(Mandatory=$true,ValueFromPipeline=$true)]
         $SuiteId,
         [switch]
		 $asJson = $false
    )
    Invoke-RequestManager -Url "/Scheduling/Suites/$SuiteId" -Method GET -asJson:$asJson
}

