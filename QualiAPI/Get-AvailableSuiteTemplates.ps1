Function Get-AvailableSuiteTemplates
{
    param
    (
         [switch]
		 $asJson = $false
    )

	Invoke-RequestManager -Url "/Scheduling/SuiteTemplates" -Method GET -asJson:$asJson
}
