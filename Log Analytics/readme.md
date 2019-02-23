# Create Azure Policy & Initiative for 47 resource types to be protected by Log Analytics Workspace

Azure Policy to add Log Analytics on Azure Resources Diagnostics settings:
47 Resource Types covered...so far

To deploy the ARM template with the policy and initiatives do the following:

New-azurermdeployment `
    -name ‘policies’ `
    –templatefile ‘C:\temp\LogAnalytics.json’ `
    -location ‘eastus2’ –verbose
