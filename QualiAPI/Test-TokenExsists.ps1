﻿Function Test-TokenExsists
{
    if ($Auth -eq $null)
    {
        Write-host 'ERROR:'  -ForeGround Red
        Write-host 'Please log in first using the Invoke-Login method'  -ForeGround Red
        return $false
    }
    return $true
}