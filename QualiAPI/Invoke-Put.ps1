Function Invoke-Put
{
    param
    (
        [string]
        $Uri,

        [string]
        $body
    )
	
	if ([string]::IsNullOrEmpty($Auth)) {
		return Invoke-RestMethod -Uri $Uri -Method Put -Body $body -ContentType $ContentTypeJson  -Headers @{
			Authorization = "Basic $Auth"
		}
	}
	else {
		return Invoke-RestMethod -Uri $Uri -Method Put -Body $body -ContentType $ContentTypeJson
	}
}