. $PSScriptRoot\Invoke-Login.ps1
. $PSScriptRoot\Get-JobDetails.ps1
. $PSScriptRoot\Get-QueuedJobs.ps1
. $PSScriptRoot\Get-RunningJobs.ps1
. $PSScriptRoot\Get-SuiteDetails.ps1
. $PSScriptRoot\Get-SuiteTemplateDetails.ps1
. $PSScriptRoot\Invoke-Get.ps1
. $PSScriptRoot\Invoke-Put.ps1
. $PSScriptRoot\Test-TokenExsists.ps1
. $PSScriptRoot\Invoke-RequestManager.ps1


Add-Type -TypeDefinition @"
    public enum Method
    {
        GET,
        PUT
    }
"@ -PassThru