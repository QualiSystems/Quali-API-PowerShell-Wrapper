# Quali-API-PowerShell-Wrapper

### Installation
Open command line and copy those lines:
```
git clone https://github.com/QualiSystems/Quali-API-PowerShell-Wrapper.git
cd Quali-API-PowerShell-Wrapper
powershell -NoExit -Command "Import-Module .\QualiAPI"
```

### Commands

Login
```powershell
Invoke-Login -User 'User' -Password 'Pass' -Domain 'Domain' -TargetHost '10.165.4.1'
```

Get queued jobs
```powershell
Get-QueuedJobs
```

Get running jobs
```powershell
Get-RunningJobs
```

Get job details by job id
```powershell
Get-JobDetails -JobId "49da2ac2-ad45-454f-9f7e-4461455b49c4"
```

Stop job by job id
```powershell
Invoke-StopJob -JobId "49da2ac2-ad45-454f-9f7e-4461455b49c4"
```

Get job details for the first queued job
```powershell
(Get-QueuedJobs)[0] | Get-JobDetails
```

Get suite details by Suite Id
```powershell
Get-SuiteDetails -SuiteId "49da2ac2-ad45-454f-9f7e-4461455b49c4"
```

Get suite status by Suite Id
```powershell
Get-SuiteStatus -SuiteId "49da2ac2-ad45-454f-9f7e-4461455b49c4"
```

Get Suite Template Details by suite template name as json result
```powershell
Get-SuiteTemplateDetails -SuiteName "SuiteTemplateName" -asJson
```

Enqueue suite by suite name - returns the suite id
```powershell
Invoke-EnqueueSuite -SuiteName "SuiteTemplateName"
```

Enqueue custom suite by suite name and json input (see json examples in the api documentation) - returns the suite id
```powershell
Invoke-EnqueueCustomSuite -SuiteName "SuiteTemplateName" -SuiteDetailsJson $suiteJson
```

Stop suite by suite id
```powershell
Invoke-StopSuite -SuiteId "49da2ac2-ad45-454f-9f7e-4461455b49c4"
```

All Get commands support -AsJson switch. This switch will output the command result in a Json format and not as Powershell object
Example:
```powershell
Get-RunningJobs -asjson
```

Have fun :-)
