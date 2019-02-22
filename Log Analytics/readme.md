# Create Multiple Recovery Vault over many subscriptsions and resource groups

Azure Policy to add Log Analytics on Azure Resources Diagnostics settings:
47 Resource Types covered...so far


To deploy the ARM template with the policy and initiatives do the following


New-azurermdeployment `
    -name ‘policies’ `
    –templatefile ‘C:\temp\LogAnalytics.json’ `
    -location ‘eastus2’ –verbose
