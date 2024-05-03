#!/bin/bash

echo "
  __  __ _      _    ___ _             _    ___ _    ___ 
 |  \/  (_)_ _ (_)  / __| |___ _  _ __| |  / __| |  |_ _|
 | |\/| | | ' \| | | (__| / _ \ || / _\` | | (__| |__ | | 
 |_|  |_|_|_||_|_|  \___|_\___/\_,_\__,_|  \___|____|___|

 Developed by Mr.CloudExplorer | Version 0.2
"
echo ""

# Main Menu
while true; do
    echo "Select Cloud provider"
    echo "a. AWS"
    echo "az. Azure"
    echo "gc. Google Cloud"
    echo "e. Exit"
    read -p "Cloud Provider: " choice
    case "$choice" in
        a)
            # Function to install and configure AWS CLI
            install_configure_aws_cli() {
                # Step 1: Install AWS CLI
                echo "Step 1: Installing AWS CLI..."
                pip install awscli --upgrade --user

                # Step 2: Configure AWS CLI
                echo "Step 2: Configuring AWS CLI..."
                aws configure
            }

            # Check if AWS CLI is installed
            if ! command -v aws &>/dev/null; then
                echo "AWS CLI is not installed."
                install_configure_aws_cli
            fi

            # Function to handle AWS EC2 commands
            aws_ec2_commands() {
                while true; do
                    echo "AWS EC2"
                    echo "1. Describe Instances"
                    echo "2. Start Instance"
                    echo "3. Stop Instance"
                    echo "4. Create Instance"
                    echo "5. Back"
                    read -p "action in ec2:  " choice
                    case "$choice" in
                        1)
                            aws ec2 describe-instances
                            ;;
                        2)
                            read -p "Enter instance ID to start: " instance_id
                            aws ec2 start-instances --instance-ids "$instance_id"
                            ;;
                        3)
                            read -p "Enter instance ID to stop: " instance_id
                            aws ec2 stop-instances --instance-ids "$instance_id"
                            ;;
                        4)
                            # Insert code to create instance
                            echo "Create instance command goes here"
                            ;;
                        5)
                            # Return to main menu
                            return
                            ;;
                        *)
                            echo "Invalid choice. Please enter a number between 1 and 5."
                            ;;
                    esac
                done
            }

            # Function to handle AWS S3 commands
            aws_s3_commands() {
                while true; do
                    echo "AWS S3"
                    echo "1. List Buckets"
                    echo "2. Create Bucket"
                    echo "3. Upload File"
                    echo "4. Back"
                    read -p "action in S3: " choice
                    case "$choice" in
                        1)
                            aws s3 ls
                            ;;
                        2)
                            read -p "Enter bucket name to create: " bucket_name
                            aws s3 mb s3://"$bucket_name"
                            ;;
                        3)
                            read -p "Enter file name to upload: " file_name
                            read -p "Enter bucket name to upload to: " bucket_name
                            aws s3 cp "$file_name" s3://"$bucket_name"/
                            ;;
                        4)
                            # Return to main menu
                            return
                            ;;
                        *)
                            echo "Invalid choice. Please enter a number between 1 and 4."
                            ;;
                    esac
                done
            }

            # Function to handle AWS Lambda commands
            aws_lambda_commands() {
                while true; do
                    echo "AWS Lambda"
                    echo "1. List Functions"
                    echo "2. Invoke Function"
                    echo "3. Create Function"
                    echo "4. Back"
                    read -p "action in Lambda: " choice
                    case "$choice" in
                        1)
                            aws lambda list-functions
                            ;;
                        2)
                            read -p "Enter function name to invoke: " function_name
                            aws lambda invoke --function-name "$function_name" --payload '{ "key": "value" }' output.json
                            ;;
                        3)
                            # Insert code to create function
                            echo "Create function command goes here"
                            ;;
                        4)
                            # Return to main menu
                            return
                            ;;
                        *)
                            echo "Invalid choice. Please enter a number between 1 and 4."
                            ;;
                    esac
                done
            }

            # Function to handle AWS CLI commands
            aws_service_menu() {
                while true; do
                    echo "
			    ___ _       _______
			   /   | |     / / ___/
			  / /| | | /| / /\__ \ 
			 / ___ | |/ |/ /___/ / 
			/_/  |_|__/|__//____/  
                       "
                    echo ""
                    echo "1. EC2"
                    echo "2. S3"
                    echo "3. Lambda"
                    echo "4. Back"
                    read -p "AWS Services: " choice
                    case "$choice" in
                        1)
                            aws_ec2_commands
                            ;;
                        2)
                            aws_s3_commands
                            ;;
                        3)
                            aws_lambda_commands
                            ;;
                        4)
                            # Return to main menu
                            return
                            ;;
                        *)
                            echo "Invalid choice. Please enter a number between 1 and 4."
                            ;;
                    esac
                done
            }

            # Call the AWS service menu function
            aws_service_menu
            ;;
        az)
            # Function to install and configure Azure CLI
            install_configure_azure_cli() {
                # Step 1: Install prerequisites
                echo "Step 1: Installing prerequisites..."
                sudo apt-get update
                sudo apt-get install ca-certificates curl apt-transport-https lsb-release gnupg -y

                # Step 2: Download and install the Microsoft signing key
                echo "Step 2: Downloading and installing the Microsoft signing key..."
                curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null

                # Step 3: Add the Azure CLI repository
                echo "Step 3: Adding the Azure CLI repository..."
                AZ_REPO=$(lsb_release -cs)
                echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | sudo tee /etc/apt/sources.list.d/azure-cli.list

                # Step 4: Update repository information and install Azure CLI
                echo "Step 4: Updating repository information and installing Azure CLI..."
                sudo apt-get update
                sudo apt-get install azure-cli -y

                # Step 5: Log in to Azure
                echo "Step 5: Logging in to Azure..."
                az login

                echo "Azure CLI installation and setup completed successfully."
            }

            # Check if Azure CLI is installed
            if ! command -v az &>/dev/null; then
                echo "Azure CLI is not installed."
                install_configure_azure_cli
            fi

            # Function to handle Azure Virtual Machines commands
            azure_vm_commands() {
                while true; do
                    echo "Azure Virtual Machines:"
                    echo "1. List Virtual Machines"
                    echo "2. Start Virtual Machine"
                    echo "3. Stop Virtual Machine"
                    echo "4. Create Virtual Machine"
                    echo "5. Back"
                    read -p "action in VM: " choice
                    case "$choice" in
                        1)
                            az vm list
                            ;;
                        2)
                            read -p "Enter resource group name: " resource_group
                            read -p "Enter virtual machine name: " vm_name
                            az vm start --resource-group "$resource_group" --name "$vm_name"
                            ;;
                        3)
                            read -p "Enter resource group name: " resource_group
                            read -p "Enter virtual machine name: " vm_name
                            az vm stop --resource-group "$resource_group" --name "$vm_name"
                            ;;
                        4)
                            # Insert code to create virtual machine
                            echo "Create virtual machine command goes here"
                            ;;
                        5)
                            # Return to main menu
                            return
                            ;;
                        *)
                            echo "Invalid choice. Please enter a number between 1 and 5."
                            ;;
                    esac
                done
            }

            # Function to handle Azure Blob Storage commands
            azure_blob_commands() {
                while true; do
                    echo "Azure Blob Storage:"
                    echo "1. List Containers"
                    echo "2. Create Container"
                    echo "3. Upload File"
                    echo "4. Back"
                    read -p "action in Blob Storage: " choice
                    case "$choice" in
                        1)
                            az storage container list
                            ;;
                        2)
                            read -p "Enter container name to create: " container_name
                            az storage container create --name "$container_name"
                            ;;
                        3)
                            read -p "Enter file name to upload: " file_name
                            read -p "Enter container name to upload to: " container_name
                            az storage blob upload --file "$file_name" --container-name "$container_name" --name "$(basename $file_name)"
                            ;;
                        4)
                            # Return to main menu
                            return
                            ;;
                        *)
                            echo "Invalid choice. Please enter a number between 1 and 4."
                            ;;
                    esac
                done
            }

            # Function to handle Azure Functions commands
            azure_functions_commands() {
                while true; do
                    echo "Azure Functions:"
                    echo "1. List Functions"
                    echo "2. Invoke Function"
                    echo "3. Create Function"
                    echo "4. Back"
                    read -p "action in functions: " choice
                    case "$choice" in
                        1)
                            az functionapp list
                            ;;
                        2)
                            read -p "Enter function name to invoke: " function_name
                            # Insert code to invoke function
                            echo "Invoke function command goes here"
                            ;;
                        3)
                            # Insert code to create function
                            echo "Create function command goes here"
                            ;;
                        4)
                            # Return to main menu
                            return
                            ;;
                        *)
                            echo "Invalid choice. Please enter a number between 1 and 4."
                            ;;
                    esac
                done
            }

            # Function to handle Azure CLI commands
            azure_service_menu() {
                while true; do
                    echo "
			    ___                      
			   /   |____  __  __________ 
			  / /| /_  / / / / / ___/ _ |
			 / ___ |/ /_/ /_/ / /  /  __/
			/_/  |_/___/\__,_/_/   \___/ 
		         "
                    echo ""
                    echo "1. Virtual Machines"
                    echo "2. Blob Storage"
                    echo "3. Functions"
                    echo "4. Back"
                    read -p "Azure Service: " choice
                    case "$choice" in
                        1)
                            azure_vm_commands
                            ;;
                        2)
                            azure_blob_commands
                            ;;
                        3)
                            azure_functions_commands
                            ;;
                        4)
                            # Return to main menu
                            return
                            ;;
                        *)
                            echo "Invalid choice. Please enter a number between 1 and 4."
                            ;;
                    esac
                done
            }

            # Call the Azure service menu function
            azure_service_menu
            ;;
        gc)
            # Function to install and configure Google Cloud SDK
            install_configure_gcloud_sdk() {
                # Step 1: Download and install the Google Cloud SDK
                echo "Step 1: Downloading and installing the Google Cloud SDK..."
                curl https://sdk.cloud.google.com | bash

                # Step 2: Add the gcloud command-line tool to your path
                echo "Step 2: Adding gcloud to your path..."
                source ~/.bashrc

                # Step 3: Initialize gcloud
                echo "Step 3: Initializing gcloud..."
                gcloud init

                # Step 4: Log in to Google Cloud
                echo "Step 4: Logging in to Google Cloud..."
                gcloud auth login

                echo "Google Cloud SDK installation and setup completed successfully."
            }

            # Check if gcloud command is available
            if ! command -v gcloud &>/dev/null; then
                echo "Google Cloud SDK is not installed."
                install_configure_gcloud_sdk
            fi

            # Function to handle Google Compute Engine (GCE) commands
            gce_commands() {
                while true; do
                    echo "Google Compute Engine"
                    echo "1. List Instances"
                    echo "2. Start Instance"
                    echo "3. Stop Instance"
                    echo "4. Create Instance"
                    echo "5. Back"
                    read -p "action in GCE: " choice
                    case "$choice" in
                        1)
                            gcloud compute instances list
                            ;;
                        2)
                            read -p "Enter instance name to start: " instance_name
                            gcloud compute instances start "$instance_name"
                            ;;
                        3)
                            read -p "Enter instance name to stop: " instance_name
                            gcloud compute instances stop "$instance_name"
                            ;;
                        4)
                            # Insert code to create instance
                            echo "Create instance command goes here"
                            ;;
                        5)
                            # Return to main menu
                            return
                            ;;
                        *)
                            echo "Invalid choice. Please enter a number between 1 and 5."
                            ;;
                    esac
                done
            }

            # Function to handle Google Cloud Storage (GCS) commands
            gcs_commands() {
                while true; do
                    echo "Google Cloud Storage"
                    echo "1. List Buckets"
                    echo "2. Create Bucket"
                    echo "3. Upload File"
                    echo "4. Back"
                    read -p "action in GCS: " choice
                    case "$choice" in
                        1)
                            gsutil ls
                            ;;
                        2)
                            read -p "Enter bucket name to create: " bucket_name
                            gsutil mb gs://"$bucket_name"
                            ;;
                        3)
                            read -p "Enter file name to upload: " file_name
                            read -p "Enter bucket name to upload to: " bucket_name
                            gsutil cp "$file_name" gs://"$bucket_name"/
                            ;;
                        4)
                            # Return to main menu
                            return
                            ;;
                        *)
                            echo "Invalid choice. Please enter a number between 1 and 4."
                            ;;
                    esac
                done
            }

            # Function to handle Google Cloud Load Balancing (GCLB) commands
            gclb_commands() {
                while true; do
                    echo "Google Cloud Load Balancing:"
                    echo "1. List Load Balancers"
                    echo "2. Create Load Balancer"
                    echo "3. Back"
                    read -p "action in GCLB: " choice
                    case "$choice" in
                        1)
                            gcloud compute backend-services list
                            ;;
                        2)
                            # Insert code to create load balancer
                            echo "Create load balancer command goes here"
                            ;;
                        3)
                            # Return to main menu
                            return
                            ;;
                        *)
                            echo "Invalid choice. Please enter a number between 1 and 3."
                            ;;
                    esac
                done
            }

            # Function to handle Google Cloud Functions (GCF) commands
            gcf_commands() {
                while true; do
                    echo "Google Cloud Functions"
                    echo "1. List Functions"
                    echo "2. Invoke Function"
                    echo "3. Create Function"
                    echo "4. Back"
                    read -p "action in gcf: " choice
                    case "$choice" in
                        1)
                            gcloud functions list
                            ;;
                        2)
                            read -p "Enter function name to invoke: " function_name
                            # Insert code to invoke function
                            echo "Invoke function command goes here"
                            ;;
                        3)
                            # Insert code to create function
                            echo "Create function command goes here"
                            ;;
                        4)
                            # Return to main menu
                            return
                            ;;
                        *)
                            echo "Invalid choice. Please enter a number between 1 and 4."
                            ;;
                    esac
                done
            }

            # Function to handle Google Cloud Platform (GCP) commands
            gcp_service_menu() {
                while true; do
                    echo "
   			   ________________ 
			  / ____/ ____/ __ |
			 / / __/ /   / /_/ /
			/ /_/ / /___/ ____/ 
			\____/\____/_/      "
                    echo ""
                    echo "1. Compute Engine"
                    echo "2. Cloud Storage"
                    echo "3. Load Balancing"
                    echo "4. Cloud Functions"
                    echo "5. Back"
                    read -p "action in GCP: " choice
                    case "$choice" in
                        1)
                            gce_commands
                            ;;
                        2)
                            gcs_commands
                            ;;
                        3)
                            gclb_commands
                            ;;
                        4)
                            gcf_commands
                            ;;
                        5)
                            # Return to main menu
                            return
                            ;;
                        *)
                            echo "Invalid choice. Please enter a number between 1 and 5."
                            ;;
                    esac
                done
            }

            # Call the Google Cloud Platform (GCP) service menu function
            gcp_service_menu
            ;;
        e)
            # Exit
            echo "Exiting Mini Cloud CLI. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 4."
            ;;
    esac
done
