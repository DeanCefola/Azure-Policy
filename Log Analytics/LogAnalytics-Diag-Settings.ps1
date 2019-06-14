  <#Author   : Dean Cefola
# Creation Date: 05-20-2019
# Usage      : AZURE Policy - Resources Diagnostic Settings for Log Analytics 

#******************************************************************************
# Date                         Version      Changes
#------------------------------------------------------------------------------
# 05/20/2019                       1.0       Intial Version
#
#******************************************************************************
#
#>


###########################
#    Get Azure Role ID    #
###########################
Get-AzureRmRoleDefinition -Id b24988ac-6180-42a0-ab88-20f7382dd24c


########################################
#    Deploy Policies to Subsciption    #
########################################
AzureRM.Resources\New-AzureRmDeployment `
    -name 'Loggingpolicies’ `
    –templatefile 'C:\temp\LogAnalytics.json' `
    -location 'eastus’ `
    –verbose


###############################
#    Clean Up All Policies    #
###############################                                      
Get-AzureRmPolicySetDefinition -Name 'Diag-Settings-Initiative' -ErrorAction SilentlyContinue `
    | Remove-AzureRmPolicySetDefinition -Force -Verbose
Get-AzureRmPolicyDefinition -Custom | ? -Property Name -Match '-diag-policy' `
    | Remove-AzureRmPolicyDefinition -Force -Verbose


