param(    
    [Parameter(Mandatory=$true)]
    [string]$resource_group
)

$workspace1 = "LAWorkspace2-student"
$workspace2 = "LAWorkspace3-student"

Write-Host "Deleting Log Analytics workspaces: $workspace1, $workspace2"

# Delete workspace1
Remove-AzOperationalInsightsWorkspace -ResourceGroupName $resource_group -Name $workspace1 -Force

# Delete workspace2
Remove-AzOperationalInsightsWorkspace -ResourceGroupName $resource_group -Name $workspace2 -Force

Write-Host "Log Analytics workspaces deleted successfully."
