Function Get-QueuedJobs
{
    param
    (
         [switch]
		 $asJson = $false
    )
    Invoke-RequestManager -Url "/Scheduling/Queue" -Method GET
}
