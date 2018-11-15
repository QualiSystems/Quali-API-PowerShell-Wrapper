Function Get-SuiteTemplateDetails
{
    param
    (
         [string]
         $SuiteName,
         [switch]
		 $asJson = $false
    )
	$SuiteName = [System.Web.HttpUtility]::UrlEncode($SuiteName)
    Invoke-RequestManager -Url "/Scheduling/SuiteTemplates/$SuiteName" -Method GET -asJson:$asJson
}
