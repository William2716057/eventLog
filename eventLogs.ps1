#get events
$events = Get-EventLog -LogName Application -Newest 10
foreach ($event in $events) {
	Write-Host "Event ID: $($event.EventID) | Source $($event.Source) | Message: $($event.Message)"
}
