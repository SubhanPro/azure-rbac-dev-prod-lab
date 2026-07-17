# ==========================================
# Azure PowerShell Deployment Script
# Project: Azure RBAC DEV/QA/STAGING Lab
# ==========================================

# Create Resource Groups

New-AzResourceGroup `
    -Name OCEAN-QA `
    -Location norwayeast

New-AzResourceGroup `
    -Name OCEAN-STAGING `
    -Location norwayeast


# Verify Resource Groups

Get-AzResourceGroup


# Create Storage Accounts

New-AzStorageAccount `
    -Name oceanqastorage888 `
    -ResourceGroupName OCEAN-QA `
    -Location norwayeast `
    -SkuName Standard_LRS

New-AzStorageAccount `
    -Name oceanstgstorage888 `
    -ResourceGroupName OCEAN-STAGING `
    -Location norwayeast `
    -SkuName Standard_LRS


# Verify Storage Accounts

Get-AzStorageAccount
