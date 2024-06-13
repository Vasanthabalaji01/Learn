# Azure Command Line Interface (CLI)

The Azure Command Line Interface (CLI) provides a command-line interface for managing Azure services and resources.

## Installation and Setup

1. **Installation** You can install the Azure CLI on your local machine by following the installation instructions provided by Microsoft. The CLI is available for [Windows](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?view=azure-cli-latest), [macOS](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-macos?view=azure-cli-latest), and [Linux](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-linux?view=azure-cli-latest) operating systems.

2. **Setup** After installation, you need to authenticate and configure the Azure CLI with your Azure account. You can do this by running the `az login` command and following the prompts to sign in with your Azure credentials.

## Use Case

### Managing Azure resources
- Using the Azure CLI, you can create, update, and delete Azure resources like virtual machines, storage accounts, and databases.
- **Commands** For example, `az vm create` creates a new virtual machine, `az storage account create` creates a storage account, and `az sql server create` creates a SQL server.

### Working with Azure Resource Manager (ARM)
- Azure Resource Manager (ARM) helps deploy and manage Azure resources. With the Azure CLI, you can create resource groups and deploy resources using ARM templates.
- **Commands** For instance, 
    - `az group create` creates a new resource group
    - `az deployment group create` deploys resources using ARM templates.

### Configuring Azure networking
- The Azure CLI allows you to create and manage networking components like virtual networks, subnets, and security groups.
- **Commands** For example, 
    - `az network vnet create` creates a new virtual network, 
    - `az network nsg create` creates a network security group, and 
    - `az network route-table create` creates a route table.

### Automating tasks
- You can automate repetitive tasks in Azure using scripts and Azure CLI commands. This helps in efficient management and deployment of Azure resources.
- writing scripts with Azure CLI commands, you can automate tasks such as setting up infrastructure, configuring services, and managing deployments.

## Documentation

This [Azure CLI Documentation](https://docs.microsoft.com/en-us/cli/azure/?view=azure-cli-latest) provides detailed information on installing the Azure CLI, getting started guides, command reference, and more.

The Azure CLI offers a powerful and flexible way to manage Azure resources and automate tasks directly from the command line.