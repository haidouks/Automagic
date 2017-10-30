Install-Module Pester -Force
$res = Invoke-Pester -Path "$PSScriptRoot\Tests" -OutputFormat NUnitXml -OutputFile $Output -PassThru 
if ($res.FailedCount -gt 0) { 
	throw "$($res.FailedCount) unit tests failed."
}