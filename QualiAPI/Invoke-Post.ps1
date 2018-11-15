Function Invoke-Post
{
    param
    (
        [string]
        $Uri,

        [string]
        $body
    )

    return Invoke-RestMethod -Uri $Uri -Method Post -Body $body -ContentType $ContentTypeJson -Headers @{
        Authorization = "Basic $Auth"
    }
}