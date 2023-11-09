DevOps Infrastructure as Code (IaC) Project

Introduction
This DevOps project focuses on automating the deployment of an Amazon Elastic Kubernetes Service (EKS) cluster and essential Kubernetes components using Infrastructure as Code (IaC) principles. It is designed to simplify the setup process for Kubernetes in an AWS environment. This README provides an overview of the project's objectives and key components.

Project Objectives
The primary objectives of this project are as follows:
1. Automated EKS Cluster Provisioning: The project streamlines the process of creating an EKS cluster using Terraform, reducing the manual effort required.
2. Security Group Configuration: It sets up security groups to control traffic to and from the EKS cluster, ensuring a secure environment.
3. Helm Chart Deployments: The project leverages Helm to deploy crucial Kubernetes components, including the Nginx web server and the AWS Load Balancer Controller.
4. Jenkins Pipeline Integration: A Jenkins pipeline script is provided to orchestrate the entire deployment process, enhancing automation and consistency.

Key Components
The project consists of the following key components:
* Terraform Configuration: Located in the Terraform directory, this code defines the infrastructure required for the EKS cluster, including VPC configuration and the EKS cluster itself.
* Helm Charts: Helm is utilized to install the Nginx web server and the AWS Load Balancer Controller, making it easy to deploy and manage these essential components.
* Jenkins Pipeline: The provided Jenkinsfile script automates the entire deployment process, allowing for efficient, repeatable, and reliable provisioning of the EKS cluster.

Conclusion
This DevOps IaC project is a significant step toward streamlining the process of deploying Kubernetes on AWS. By automating the setup and configuration of an EKS cluster and crucial Kubernetes components.