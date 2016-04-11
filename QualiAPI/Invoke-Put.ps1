Function Invoke-Put
{
    param
    (
        [string]
        $Uri,

        [string]
        $body
    )
    return Invoke-RestMethod -Uri $Uri -Method Put -Body $body -ContentType $ContentTypeJson
}