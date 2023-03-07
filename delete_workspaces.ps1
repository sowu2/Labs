$workspace1 = "LAWorkspace2-${Env:user_alias}"
$workspace2 = "LAWorkspace3-${Env:user_alias}"

# Delete workspace1
Remove-AzOperationalInsightsWorkspace -ResourceGroupName ${Env:resource_group} -Name $workspace1 -Force

# Delete workspace2
Remove-AzOperationalInsightsWorkspace -ResourceGroupName ${Env:resource_group} -Name $workspace2 -Force
