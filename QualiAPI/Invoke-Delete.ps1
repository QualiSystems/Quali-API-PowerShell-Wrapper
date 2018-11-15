Function Invoke-Delete
{
    param
    (
        [string]
        $Uri,

        [string]
        $body
    )

    return Invoke-RestMethod -Uri $Uri -Method Delete -Body $body -ContentType $ContentTypeJson -Headers @{
        Authorization = "Basic $Auth"
    }
}