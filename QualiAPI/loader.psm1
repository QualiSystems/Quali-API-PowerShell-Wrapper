. $PSScriptRoot\Invoke-Get.ps1
. $PSScriptRoot\Invoke-Put.ps1
. $PSScriptRoot\Invoke-Post.ps1
. $PSScriptRoot\Invoke-Delete.ps1
. $PSScriptRoot\Invoke-RequestManager.ps1
. $PSScriptRoot\Test-TokenExsists.ps1
. $PSScriptRoot\Invoke-Login.ps1
. $PSScriptRoot\Get-JobDetails.ps1
. $PSScriptRoot\Get-QueuedJobs.ps1
. $PSScriptRoot\Get-RunningJobs.ps1
. $PSScriptRoot\Get-SuiteDetails.ps1
. $PSScriptRoot\Get-SuiteStatus.ps1
. $PSScriptRoot\Get-SuiteTemplateDetails.ps1
. $PSScriptRoot\Get-AvailableSuiteTemplates.ps1
. $PSScriptRoot\Invoke-EnqueueSuite.ps1
. $PSScriptRoot\Invoke-EnqueueCustomSuite.ps1
. $PSScriptRoot\Invoke-StopJob.ps1
. $PSScriptRoot\Invoke-StopSuite.ps1


Add-Type -TypeDefinition @"
    public enum Method
    {
        GET,
        PUT,
		POST,
		DELETE
    }
"@ -PassThru