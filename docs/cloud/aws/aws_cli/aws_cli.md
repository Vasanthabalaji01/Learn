# AWS Command Line Interface (CLI)

The AWS Command Line Interface (CLI) is a powerful tool for managing AWS services directly from your terminal or command prompt.

## Installation and Setup

1. **Installation** Download and install the AWS CLI package for your operating system from [here](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html).

2. **Configuration** After installation, configure the AWS CLI with your AWS credentials using the `aws configure` command in your terminal. Provide your Access Key ID, Secret Access Key, default region, and output format when prompted.

## Use Cases
listed use cases and provide an explanation for each

1. **EC2 Management**
      - Amazon Elastic Compute Cloud (EC2) is a web service that provides resizable compute capacity in the cloud. It allows you to launch virtual servers known as instances to run your applications.
      - The listed commands (`aws ec2 start-instances`, `aws ec2 stop-instances`, `aws ec2 terminate-instances`, `aws ec2 describe-instances`) are used to control EC2 instances:
        - `start-instances` Starts one or more stopped instances.
        - `stop-instances` Stops one or more running instances.
        - `terminate-instances` Terminates one or more instances, permanently removing them from your AWS account.
        - `describe-instances` Retrieves information about one or more instances, such as their state, type, and configuration.

2. **S3 Operations**
      - Amazon Simple Storage Service (S3) is an object storage service that offers scalable storage for data backup, archival, and analytics.
      - The listed commands (`aws s3 mb`, `aws s3 rb`, `aws s3 ls`, `aws s3 cp`, `aws s3 sync`) are used to manage S3 buckets and objects
        - `mb` (make bucket) Creates a new S3 bucket.
        - `rb` (remove bucket) Deletes an empty S3 bucket.
        - `ls` (list) Lists the objects and/or buckets in S3.
        - `cp` (copy) Copies objects between S3 buckets or from/to local file systems.
        - `sync` Syncs the contents of a local directory with an S3 bucket, ensuring that only the differences are transferred.

3. **IAM Tasks**
      - AWS Identity and Access Management (IAM) is a service that helps you control access to AWS resources securely.
      - The listed commands (`aws iam create-user`, `aws iam create-role`, `aws iam create-policy`, `aws iam create-group`, `aws iam create-access-key`, `aws iam attach-group-policy`) are used to manage IAM users, roles, policies, groups, and access keys
        - `create-user` Creates a new IAM user.
        - `create-role` Creates a new IAM role.
        - `create-policy` Creates a new IAM policy.
        - `create-group` Creates a new IAM group.
        - `create-access-key` Creates a new access key pair for an IAM user.
        - `attach-group-policy` Attaches an IAM policy to an IAM group, granting the permissions specified in the policy to the group members.

4. **Networking Configuration**
      - Amazon Virtual Private Cloud (VPC) is a service that lets you provision a logically isolated section of the AWS Cloud.
      - The listed commands (`aws ec2 create-vpc`, `aws ec2 create-subnet`, `aws ec2 create-route-table`, `aws ec2 create-security-group`, `aws ec2 create-network-interface`) are used to configure various networking components in a VPC
        - `create-vpc` Creates a new VPC (Virtual Private Cloud).
        - `create-subnet` Creates a new subnet within a VPC.
        - `create-route-table` Creates a new route table for controlling the routing of traffic within a VPC.
        - `create-security-group` Creates a new security group, which acts as a virtual firewall for controlling inbound and outbound traffic to EC2 instances.
        - `create-network-interface` Creates a new network interface, which can be attached to EC2 instances to enable communication with other resources in the VPC.

## Documentation

Explore the full documentation and detailed instructions on the [AWS CLI Documentation](https://docs.aws.amazon.com/cli/index.html)

The AWS CLI offers a seamless way to automate tasks, script interactions, and integrate AWS functionality directly into your workflows from the command line.