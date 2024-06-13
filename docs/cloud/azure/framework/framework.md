# Framework Used in Azure

Microsoft Azure provides a variety of frameworks and best practices to help customers design, deploy, and manage their applications and infrastructure efficiently.

## Azure Well-Architected Framework

The Azure Well-Architected Framework provides a set of best practices and guidelines for designing and operating reliable, secure, efficient, and cost-effective systems in the cloud. It is based on five pillars

1. **Cost Optimization** Manage costs to maximize the value delivered.
2. **Operational Excellence** Continuously improve operations processes and procedures.
3. **Performance Efficiency** Efficiently use resources to meet system requirements.
4. **Reliability** Ensure a system can recover from failures and continue to function.
5. **Security** Protect applications and data from threats.

### Well-Architected Tools and Resources
- **Azure Well-Architected Review** A tool to review and improve your architecture based on the Well-Architected Framework.
- **Azure Advisor** Personalized best practices and recommendations.
- **Azure Architecture Center** Guidance, blueprints, and best practices.

#### Links

- **Overview** - [Azure Well-Architected Framework](https://docs.microsoft.com/en-us/azure/architecture/framework/)
- **Review Tool** - [Azure Well-Architected Review](https://docs.microsoft.com/en-us/azure/architecture/framework/well-architected-review)
- **Azure Advisor** - [Azure Advisor](https://docs.microsoft.com/en-us/azure/advisor/advisor-overview)
- **Architecture Center** - [Azure Architecture Center](https://docs.microsoft.com/en-us/azure/architecture/)

## Microsoft Cloud Adoption Framework for Azure (CAF)

The Microsoft Cloud Adoption Framework (CAF) provides end-to-end guidance for organizations to achieve their cloud adoption goals. It includes a series of steps, best practices, and tools that assist with cloud adoption.

### CAF Phases and Tools
1. **Strategy** Define business justification and expected outcomes.
2. **Plan** Align actionable cloud adoption plans with business outcomes.
3. **Ready** Prepare the cloud environment for the planned changes.
4. **Adopt** Execute the plan, migrate workloads, and innovate with new solutions.
5. **Govern** Establish and refine governance to manage cloud environments.
6. **Manage** Manage operations to ensure cloud environments are well-governed and well-operated.

### CAF Tools
- **Azure Migrate** Discover, assess, and migrate on-premises applications.
- **Azure Blueprints** Define a repeatable set of Azure resources and policies.
- **Azure Policy** Implement governance policies across resources.

#### Links

- **Overview** - [Cloud Adoption Framework](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/)
- **Strategy** - [Define your strategy](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/strategy/)
- **Plan** - [Plan your adoption](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/plan/)
- **Ready** - [Ready your organization](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/)
- **Adopt** - [Adopt the cloud](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/adopt/)
- **Govern** - [Govern your environment](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/govern/)
- **Manage** - [Manage your environment](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/manage/)
- **Tools** - [Azure Migrate](https://docs.microsoft.com/en-us/azure/migrate/migrate-overview), [Azure Blueprints](https://docs.microsoft.com/en-us/azure/governance/blueprints/overview), [Azure Policy](https://docs.microsoft.com/en-us/azure/governance/policy/overview)

## Azure DevOps

Azure DevOps provides development tools and services to support DevOps practices, facilitating continuous integration and continuous delivery (CI/CD).

- **Overview** - [Azure DevOps](https://azure.microsoft.com/en-us/services/devops/)
- **Repos** - [Azure Repos](https://docs.microsoft.com/en-us/azure/devops/repos/?view=azure-devops)
- **Pipelines** - [Azure Pipelines](https://docs.microsoft.com/en-us/azure/devops/pipelines/?view=azure-devops)
- **Boards** - [Azure Boards](https://docs.microsoft.com/en-us/azure/devops/boards/?view=azure-devops)
- **Test Plans** - [Azure Test Plans](https://docs.microsoft.com/en-us/azure/devops/test-plans/?view=azure-devops)
- **Artifacts**: - [Azure Artifacts](https://docs.microsoft.com/en-us/azure/devops/artifacts/?view=azure-devops)

### Key Components
- **Azure Repos** Source control repository for managing code.
- **Azure Pipelines** Build and release pipelines for CI/CD.
- **Azure Boards** Agile project management with Kanban boards.
- **Azure Test Plans** Integrated testing tools for test management.
- **Azure Artifacts** Package management for managing dependencies.

## Azure Resource Manager (ARM)

Azure Resource Manager (ARM) enables you to manage your infrastructure through declarative templates rather than scripts.

- **Overview** - [Azure Resource Manager](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/overview)
- **Templates** - [ARM Templates](https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/overview)
- **Resource Groups** - [Resource Groups](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal)

### Features
- **Infrastructure as Code (IaC)** Define infrastructure using JSON templates.
- **Consistent Management Layer** Manage resources through a unified management layer.
- **Resource Grouping** Organize resources for easy management and billing.

## Azure Security Center

Azure Security Center provides unified security management and advanced threat protection across hybrid cloud workloads.

- **Overview** - [Azure Security Center](https://docs.microsoft.com/en-us/azure/security-center/security-center-introduction)
- **Getting Started** - [Getting Started with Azure Security Center](https://docs.microsoft.com/en-us/azure/security-center/security-center-get-started)
- **Best Practices** - [Azure Security Center Best Practices](https://docs.microsoft.com/en-us/azure/security-center/security-center-best-practices)

### Key Features
- **Security Posture Management** Assess and improve your security posture.
- **Advanced Threat Protection** Detect and respond to threats with built-in AI.
- **Compliance Management** Continuously monitor compliance with regulatory requirements.

## Azure Blueprints

Azure Blueprints helps you define a repeatable set of Azure resources that implement and adhere to standards, patterns, and requirements.

- **Overview** - [Azure Blueprints](https://docs.microsoft.com/en-us/azure/governance/blueprints/overview)
- **Getting Started** - [Getting Started with Azure Blueprints](https://docs.microsoft.com/en-us/azure/governance/blueprints/create-blueprint-portal)
- **Built-in Blueprints** - [Built-in Blueprints](https://docs.microsoft.com/en-us/azure/governance/blueprints/samples/built-in-blueprint-definitions)

### Benefits
- **Predefined Templates** Use built-in blueprints for common scenarios.
- **Compliance** Ensure compliance with organizational and regulatory requirements.
- **Versioning** Version control for blueprint definitions.

## Azure Policy

Azure Policy helps you manage and enforce organizational standards and assess compliance at-scale.

- **Overview** - [Azure Policy](https://docs.microsoft.com/en-us/azure/governance/policy/overview)
- **Getting Started** - [Getting Started with Azure Policy](https://docs.microsoft.com/en-us/azure/governance/policy/get-started)
- **Policy Definition Structure** - [Policy Definition Structure](https://docs.microsoft.com/en-us/azure/governance/policy/concepts/definition-structure)

### Features
- **Policy Definition** Create policies to enforce rules and effects.
- **Policy Assignment** Apply policies to resources, resource groups, or subscriptions.
- **Compliance** Monitor compliance and take corrective actions.

## Azure Monitor

Azure Monitor provides full-stack monitoring and diagnostics to maximize the availability and performance of your applications and services.

- **Overview** - [Azure Monitor](https://docs.microsoft.com/en-us/azure/azure-monitor/overview)
- **Metrics and Logs** - [Collect, analyze, and act on telemetry data](https://docs.microsoft.com/en-us/azure/azure-monitor/platform/data-collection)
- **Alerts** - [Alerts in Azure Monitor](https://docs.microsoft.com/en-us/azure/azure-monitor/platform/alerts-overview)
- **Application Insights** - [Azure Application Insights](https://docs.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview)

### Capabilities
- **Metrics and Logs** Collect and analyze metrics and logs.
- **Alerts** Set up alerts to proactively identify and resolve issues.
- **Application Insights** Application performance management (APM) service.

## Azure Arc

Azure Arc extends Azure management and services to any infrastructure, allowing you to manage your entire environment through a single pane of glass.

- **Overview** - [Azure Arc](https://docs.microsoft.com/en-us/azure/azure-arc/overview)
- **Hybrid Management** - [Manage Servers with Azure Arc](https://docs.microsoft.com/en-us/azure/azure-arc/servers/overview)
- **Governance and Security** - [Governance and Security with Azure Arc](https://docs.microsoft.com/en-us/azure/azure-arc/servers/manage-hybrid-environment)

### Features
- **Hybrid Management** Manage on-premises, multi-cloud, and edge environments.
- **Governance and Security** Apply Azure governance and security policies consistently.
- **Azure Services** Use Azure data services on any infrastructure.

These frameworks and tools provide comprehensive guidance and best practices to help organizations achieve their cloud goals efficiently and securely.

[Back](../azure.md)