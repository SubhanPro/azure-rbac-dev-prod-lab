# List Storage Accounts
az storage account list --output table

# List Storage Account Keys
az storage account keys list \
    --account-name oceandevstorage888 \
    --resource-group OCEAN-DEV

# Create Blob Container: documents
az storage container create \
    --account-name oceandevstorage888 \
    --name documents \
    --account-key <ACCOUNT_KEY>

# Create Blob Container: backups
az storage container create \
    --account-name oceandevstorage888 \
    --name backups \
    --account-key <ACCOUNT_KEY>

# List Containers
az storage container list \
    --account-name oceandevstorage888 \
    --account-key <ACCOUNT_KEY> \
    --output table

# Delete backups Container
az storage container delete \
    --account-name oceandevstorage888 \
    --name backups \
    --account-key <ACCOUNT_KEY>

# Verify deletion
az storage container list \
    --account-name oceandevstorage888 \
    --account-key <ACCOUNT_KEY> \
    --output table
