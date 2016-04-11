Function Invoke-Get
{
    param
    (
        [string]
        $Uri,

        [string]
        $AtuhToken
    )
    return Invoke-RestMethod -Uri $Uri -Method Get -ContentType $ContentTypeJson -Headers @{
        Authorization = "Basic $Auth"
    }
}