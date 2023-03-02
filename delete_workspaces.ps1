param(
    [Parameter(Mandatory=$true)]
    [string]$user_alias,
    
    [Parameter(Mandatory=$true)]
    [string]$resource_group
)

$workspace1 = "LAWorkspace2-$user_alias"
$workspace2 = "LAWorkspace3-$user_alias"

Write-Host "Deleting Log Analytics workspaces: $workspace1, $workspace2"

# Delete workspace1
Remove-AzOperationalInsightsWorkspace -ResourceGroupName $resource_group -Name $workspace1 -Force

# Delete workspace2
Remove-AzOperationalInsightsWorkspace -ResourceGroupName $resource_group -Name $workspace2 -Force

Write-Host "Log Analytics workspaces deleted successfully."
