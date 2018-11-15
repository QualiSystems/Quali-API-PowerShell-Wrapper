Function Get-RunningJobs
{
    param
    (
         [switch]
		 $asJson = $false
    )
    Invoke-RequestManager -Url "/Scheduling/Executions" -Method GET -asJson:$asJson
}
