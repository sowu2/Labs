param(    
    [Parameter(Mandatory=$true)]
    [string]$resource_group
)

$workspace1 = "LAWorkspace2-student"
$workspace2 = "LAWorkspace3-student"

Write-Host "Connecting Account"
Connect-AzAccount
Write-Host "Deleting Log Analytics workspaces: $workspace1, $workspace2"

# Delete workspace1
Remove-AzOperationalInsightsWorkspace -ResourceGroupName $resource_group -Name $workspace1 -Force --mode Complete

# Delete workspace2
Remove-AzOperationalInsightsWorkspace -ResourceGroupName $resource_group -Name $workspace2 -Force --mode Complete

Write-Host "Log Analytics workspaces deleted successfully."
