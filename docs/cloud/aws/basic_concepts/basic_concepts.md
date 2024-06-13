# Basics of AWS

## What is AWS?

Amazon Web Services (AWS) is a highly evolving cloud computing platform provided by Amazon.com. 

It offers a wide range of services, including computing power, storage solutions, networking, databases, machine learning, analytics, and more, all delivered over the internet ("the cloud").

AWS allows businesses to access these resources on a pay-as-you-go basis, enabling them to scale and innovate without the need to invest in costly infrastructure upfront.

## How it Works

AWS operates by providing virtualized computing resources over the internet. 

Users can access these resources through the AWS Management Console, a web-based interface, or via command-line tools. 

AWS data centers are located in various regions around the world, allowing users to deploy their applications and services in locations that best serve their needs in terms of latency, compliance, and data sovereignty.

## key terms to know

- **Instance** - A virtual server in the cloud, typically provided by Amazon EC2. Instances can vary in size, operating system, and other configurations.

- **Region** - A geographical area where AWS has data centers. Each region consists of multiple availability zones.

- **Availability Zone (AZ)** - A distinct location within a region, engineered to be isolated from failures in other zones. AZs are interconnected with low-latency links.

- **Amazon S3 (Simple Storage Service)** - An object storage service used to store and retrieve data. S3 is highly scalable, durable, and designed for 99.999999999% (11 9's) of durability.

- **Amazon RDS (Relational Database Service)** -  A managed relational database service that simplifies database setup, operation, and scaling. Supports various database engines like MySQL, PostgreSQL, SQL Server, etc.

- **Amazon VPC (Virtual Private Cloud)** - A virtual network dedicated to your AWS account. It allows you to create isolated sections of the AWS Cloud, control network configuration, and securely connect AWS resources.

- **Amazon EC2 (Elastic Compute Cloud)** - A web service that provides resizable compute capacity in the cloud. It allows you to run virtual servers, known as instances, with various configurations.

- **Elastic Load Balancing** - Automatically distributes incoming application traffic across multiple targets, such as EC2 instances, containers, IP addresses, and Lambda functions, to ensure high availability and fault tolerance.

- **Auto Scaling** - Automatically adjusts the number of EC2 instances in a group based on demand or a predefined schedule. It helps maintain performance and optimize costs by scaling capacity up or down as needed.

- **AWS Lambda** - A serverless computing service that lets you run code without provisioning or managing servers. You pay only for the compute time consumed by your code.

- **IAM (Identity and Access Management)** - AWS service for securely managing access to resources. It allows you to create and manage users, groups, roles, and permissions to control who can access AWS resources.

- **CloudFormation** - AWS service for provisioning and managing AWS infrastructure as code. It allows you to define templates to automatically create and configure resources.

- **CloudWatch** - A monitoring and observability service that provides data and insights into your AWS resources and applications. It collects and tracks metrics, monitors logs, and sets alarms.

- **Elastic Block Store (EBS)** - A block-level storage service used with EC2 instances for persistent data storage. It provides scalable and high-performance storage volumes that persist independently from the life of an instance.

- **Route 53** - A scalable and highly available domain name system (DNS) web service. It translates human-readable domain names into IP addresses and routes users' requests to the correct resources.

## Account Creation Criteria, Requirements, Process

Creating an AWS account is relatively straightforward, and the process typically involves the following steps

1. **Visit the AWS Website** Go to the AWS website (https://aws.amazon.com/) and click on the "Create an AWS Account" button.

2. **Provide Account Information** Enter your email address, choose a password, and provide the necessary account information, including name, address, and payment information.

3. **Verify Identity** AWS may require you to verify your identity by phone or text message to ensure security.

4. **Select a Support Plan** Choose a support plan based on your needs. AWS offers a range of support options, from basic free support to premium plans with personalized assistance.

5. **Payment Method** Enter your payment information. AWS typically requires a valid credit card, but some users may qualify for invoicing.

6. **Accept Terms and Conditions** Review and accept the AWS Customer Agreement, which outlines the terms and conditions of using AWS services.

7. **Account Activation** Once your account information is verified and payment details are provided, your AWS account will be activated with in 24hrs aprox, and you can start using AWS services.

## Pricing Model

AWS operates on a pay-as-you-go pricing model, which means you only pay for the resources you consume, with no upfront costs or long-term commitments. 

The pricing for each AWS service varies depending on factors such as the type and amount of resources used, the region where the resources are deployed, and any additional features or support options selected.

AWS offers several pricing options, including

- **On-Demand** Pay for compute capacity by the hour or by the second, with no long-term commitments.
- **Reserved Instances** Reserve compute capacity for a specific term (one or three years) in exchange for significant discounts compared to on-demand pricing.
- **Spot Instances** Bid on unused EC2 capacity, potentially saving up to 90% compared to on-demand pricing.
- **Pay-As-You-Go** Pay for what you use without any upfront costs or termination fees.
- **Free Tier** AWS offers a free tier for new customers, providing limited access to a range of services for a certain period (usually 12 months) to help users get started with AWS at no cost.

It's essential to monitor your AWS usage regularly to avoid unexpected charges, and AWS provides tools and services to help you manage and optimize your costs effectively.