Function Get-SuiteTemplateDetails
{
    param
    (
         [string]
         $SuiteName,
         [switch]
		 $asJson = $false
    )
    Invoke-RequestManager -Url "/Scheduling/SuiteTemplates/$SuiteName" -Method GET
}
