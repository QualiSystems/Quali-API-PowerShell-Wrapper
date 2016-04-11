Function Get-JobDetails
{
    param
    (
         [Parameter(Mandatory=$true,ValueFromPipeline=$true)]
         $JobId,
         [switch]
		 $asJson = $false
    )
    Invoke-RequestManager -Url "/Scheduling/Jobs/$JobId" -Method GET
}