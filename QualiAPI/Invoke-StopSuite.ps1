Function Invoke-StopSuite
{
    param
    (
         [Parameter(Mandatory=$true,ValueFromPipeline=$true)]
         $SuiteId
    )

    Invoke-RequestManager -Url "/Scheduling/Suites/$SuiteId" -Method DELETE
}
