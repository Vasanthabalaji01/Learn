# Kubernetes (K8s)

Kubernetes, often abbreviated as K8s, is an open-source container orchestration platform designed to automate the deployment, scaling, and management of containerized applications. It provides a platform-agnostic framework for managing containerized workloads and services, allowing developers to focus on building and running applications without worrying about the underlying infrastructure.

## Key Concepts

- **Containers** Kubernetes manages containerized applications packaged with their dependencies and runtime environment.
- **Pods** The smallest deployable units in Kubernetes, consisting of one or more containers that share network and storage resources.
- **Deployments** Kubernetes resources that manage the lifecycle of Pods, including scaling, rolling updates, and rollback capabilities.
- **Services** Kubernetes resources that expose applications running in Pods to network traffic and provide service discovery and load balancing.
- **Nodes** The physical or virtual machines that run Kubernetes components and host Pods.
- **Clusters** A collection of nodes that work together as a single logical unit, managed by Kubernetes.

## Kubernetes Architecture

Kubernetes follows a master-worker architecture, consisting of the following components:

- **Master Node** The control plane of the Kubernetes cluster, responsible for managing cluster state, scheduling Pods, and handling API requests.
  - **API Server** Exposes the Kubernetes API and serves as the frontend for the control plane.
  - **Scheduler** Assigns Pods to nodes based on resource requirements and other constraints.
  - **Controller Manager** Monitors cluster state and manages various controllers responsible for maintaining desired state.
  - **etcd** A distributed key-value store that stores cluster configuration and state information.

- **Worker Node** The compute nodes in the Kubernetes cluster, responsible for running Pods and handling container runtime operations.
  - **Kubelet** An agent that runs on each node and communicates with the API server to manage Pods.
  - **Container Runtime** Software responsible for running containers, such as Docker, containerd, or cri-o.
  - **Kube Proxy** Manages network routing and load balancing for Services.

## Core Components

- **Pods** The basic building blocks of Kubernetes, encapsulating one or more containers.
- **Deployments** Kubernetes resources that manage the lifecycle of Pods, ensuring desired state and handling updates and rollbacks.
- **Services** Kubernetes resources that define networking rules and policies to expose applications running in Pods to network traffic.
- **Volumes** Kubernetes resources that provide persistent storage for containers.
- **ConfigMaps and Secrets** Kubernetes resources for storing configuration data and sensitive information, respectively.
- **Namespaces** Virtual clusters within a Kubernetes cluster, used to partition resources and enforce access control.

## Getting Started with Kubernetes

To get started with Kubernetes

1. **Set Up a Kubernetes Cluster** Install Kubernetes on your local machine using tools like Minikube, or provision a cluster on a cloud provider like Google Kubernetes Engine (GKE), Amazon Elastic Kubernetes Service (EKS), or Microsoft Azure Kubernetes Service (AKS).

2. **Interact with the Cluster** Use the `kubectl` command-line tool to interact with the Kubernetes cluster, deploying applications, managing resources, and querying cluster state.

3. **Deploy Applications** Define Kubernetes resources, such as Pods, Deployments, and Services, to deploy and manage your applications.

4. **Monitor and Troubleshoot** Use Kubernetes monitoring and logging tools to monitor cluster health, troubleshoot issues, and optimize performance.

## Deploying Applications

To deploy applications on Kubernetes

1. **Create Docker Images** Package your applications and their dependencies into Docker images.

2. **Write Kubernetes Manifests**: Define Kubernetes resources using YAML or JSON manifests, specifying Pods, Deployments, Services, and other necessary components.

3. **Apply Manifests** Use `kubectl apply` to apply the Kubernetes manifests and create the desired resources in the cluster.

4. **Monitor Deployment** Monitor the deployment process using `kubectl` commands or Kubernetes dashboard to ensure Pods are created and healthy.

## Scaling Applications

Kubernetes provides built-in support for scaling applications based on resource utilization or custom metrics. You can scale applications manually or automatically using Horizontal Pod Autoscalers (HPA).

## Service Discovery and Load Balancing

Kubernetes Services enable service discovery and load balancing for applications running in Pods. Services provide stable endpoints for accessing Pods and distribute traffic across multiple Pods using kube-proxy.

## Self-Healing

Kubernetes automatically monitors the health of Pods and restarts or replaces them if they fail. Kubernetes also supports rolling updates and rollbacks for Deployments to ensure seamless application updates without downtime.

[Back](../tools.md)