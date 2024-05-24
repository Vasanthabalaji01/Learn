# Framework Used in AWS

Amazon Web Services (AWS) offers a variety of frameworks and best practices to help customers design, deploy, and manage their applications and infrastructure efficiently.

## AWS Well-Architected Framework

The AWS Well-Architected Framework provides a set of best practices and guidelines for designing and operating reliable, secure, efficient, and cost-effective systems in the cloud. It is based on five pillars

1. **Operational Excellence** Focuses on running and monitoring systems to deliver business value and continuously improve processes and procedures.
2. **Security** Emphasizes protecting information and systems, including data protection, access management, and response to security incidents.
3. **Reliability** Ensures a workload performs its intended function correctly and consistently, including the ability to recover from failures and meet demand.
4. **Performance Efficiency** Efficiently use computing resources to meet system requirements and maintain efficiency as demand changes and technologies evolve.
5. **Cost Optimization** Manage costs to ensure you get the most value from your investment.

### Well-Architected Tools and Resources
- **AWS Well-Architected Tool** Helps you review the state of your workloads and compares them to the latest AWS architectural best practices.
- **AWS Well-Architected Labs** Provides hands-on labs to help you learn and implement best practices.
- **AWS Well-Architected Partner Program** Connects you with certified AWS partners who can help you build and operate well-architected workloads.

- **Links** 

    - **Overview** - [AWS Well-Architected Framework](https://aws.amazon.com/architecture/well-architected/)
    - **Whitepapers** - [Well-Architected Whitepapers](https://aws.amazon.com/architecture/well-architected/?wa-lens-whitepapers.sort-by=item.additionalFields.sortDate&wa-lens-whitepapers.sort-order=desc&awsf.filter-content-type=*all&awsf.filter-objective=*all&awsf.filter-author=*all)
    - **Tool** - [AWS Well-Architected Tool](https://aws.amazon.com/well-architected-tool/)
    - **Labs** - [AWS Well-Architected Labs](https://www.wellarchitectedlabs.com/)

## AWS Cloud Adoption Framework (AWS CAF)

The AWS Cloud Adoption Framework (AWS CAF) helps organizations develop and execute efficient and effective plans for cloud adoption. It organizes guidance into six perspectives:

1. **Business Perspective** Focuses on aligning IT strategy with business goals, improving business value, and creating a business case for cloud adoption.
2. **People Perspective** Addresses change management, staff skills, and organizational structures to prepare people for cloud adoption.
3. **Governance Perspective** Emphasizes IT governance, risk management, and compliance.
4. **Platform Perspective** Provides guidance on cloud infrastructure, cloud-native services, and integrating with existing environments.
5. **Security Perspective** Ensures that the cloud environment is secure and compliant.
6. **Operations Perspective** Focuses on operating, monitoring, and managing cloud services.

- **Links** 

    - **Overview** - [AWS Cloud Adoption Framework](https://aws.amazon.com/professional-services/CAF/)
    - **Whitepapers** - [AWS Cloud Adoption Framework Whitepaper](https://d1.awsstatic.com/whitepapers/aws_cloud_adoption_framework.pdf)
    - **AWS CAF Perspectives** - [AWS CAF Perspectives](https://aws.amazon.com/professional-services/CAF/perspectives/)

## AWS Serverless Application Model (AWS SAM)

The AWS Serverless Application Model (AWS SAM) is an open-source framework for building serverless applications. It provides shorthand syntax to define the AWS resources required for serverless applications

- **Simplified Syntax** Define APIs, functions, databases, and event source mappings with a few lines of code.
- **Integration with AWS CloudFormation** Leverage AWS CloudFormation to deploy and manage your serverless applications.
- **Local Development and Testing** Use the AWS SAM CLI to develop, test, and debug locally.

- **Links** 

    - **Overview** - [AWS SAM](https://aws.amazon.com/serverless/sam/)
    - **Documentation** - [AWS SAM Documentation](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/what-is-sam.html)
    - **CLI** - [AWS SAM CLI](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli.html)

## AWS Cloud Development Kit (AWS CDK)

The AWS Cloud Development Kit (AWS CDK) is an open-source software development framework to define cloud infrastructure in code and provision it through AWS CloudFormation. 

- **Infrastructure as Code (IaC)** Define your cloud infrastructure using familiar programming languages like TypeScript, Python, Java, and .NET.
- **Constructs** High-level components that abstract AWS resources and simplify cloud application development.
- **Integration with AWS Services** Seamlessly integrates with other AWS services for managing and deploying applications.

- **Links**

    - **Overview** - [AWS CDK](https://aws.amazon.com/cdk/)
    - **Documentation** - [AWS CDK Documentation](https://docs.aws.amazon.com/cdk/latest/guide/home.html)
    - **GitHub Repository** - [AWS CDK GitHub](https://github.com/aws/aws-cdk)

## AWS Control Tower

AWS Control Tower provides a straightforward way to set up and govern a secure, multi-account AWS environment based on AWS best practices. 

- **Automated Landing Zone** Set up a secure, multi-account AWS environment automatically.
- **Guardrails** Pre-packaged governance rules to enforce security, compliance, and operational policies.
- **Dashboard** A centralized dashboard to manage your multi-account environment.

- **Links**

    - **Overview** - [AWS Control Tower](https://aws.amazon.com/controltower/)
    - **Documentation** - [AWS Control Tower Documentation](https://docs.aws.amazon.com/controltower/latest/userguide/what-is-control-tower.html)

## AWS Service Catalog

AWS Service Catalog allows organizations to create and manage catalogs of IT services that are approved for use on AWS. 

- **Standardized Products** Create and manage approved cloud resources.
- **Self-Service Access** Allow users to quickly deploy only the approved IT services they need.
- **Governance** Maintain control over the use and cost of AWS resources.

- **Links** 

    - **Overview** [AWS Service Catalog](https://aws.amazon.com/servicecatalog/)
    - **Documentation** [AWS Service Catalog Documentation](https://docs.aws.amazon.com/servicecatalog/latest/adminguide/introduction.html)

## AWS Organizations

AWS Organizations enables you to centrally manage and govern your environment as you grow and scale your AWS resources. 

- **Centralized Management** Manage multiple AWS accounts.
- **Consolidated Billing** Aggregate usage and share savings.
- **Policy-Based Management** Apply policies for security and compliance.

- **Links** 

    - **Overview** [AWS Organizations](https://aws.amazon.com/organizations/)
    - **Documentation** [AWS Organizations Documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html)

[Back](../aws.md)