Function Invoke-StopJob
{
    param
    (
         [Parameter(Mandatory=$true,ValueFromPipeline=$true)]
         $JobId
    )

    Invoke-RequestManager -Url "/Scheduling/Executions/$JobId" -Method DELETE
}
