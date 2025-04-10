$Location="West Europe"
$ResourceGroupName="ps-grp"

New-AzResourceGroup -Name $ResourceGroupName -Location $Location 

$AppServicePlanName="learningplan3105"

New-AzAppServicePlan -ResourceGroupName $ResourceGroupName -Name $AppServicePlanName `
-Location $Location -Tier Free

$AppName="learningapp310511"

New-AzWebApp -ResourceGroupName $ResourceGroupName `
-Location $Location -Name $AppName `
-AppServicePlan $AppServicePlanName