#!/bin/bash

set -ex

export TF_VAR_region = $REGION
export TF_VAR_vpc_id = $VPC_ID
export TF_VAR_cluster_name = $CLUSTER_NAME

CD Terraform

sed -i "s/ngg_cluster_name/$CLUSTER_NAME/g" backend.tf

terraform init
terraform plan
terraform $ACTION --auto-aaprove

if [ $ACTION == "apply" ]; then

aws eks update-kubeconfig --name $CLUSTER_NAME --region $REGION
kubectl get pods -A


#installing bitnami helm chart
helm repo add bitnami https://charts.bitnami.com/bitnami

#installing eks helm chart
helm repo add eks https://aws.github.io/eks-charts

#installing nginx
helm upgrade --install nginx bitnami/nginx

#installing aws loadbalancer controller
helm upgrade --install lb-controller eks/aws-load-balancer-controller --set clusterName=$CLUSTER_NAME


else 
echo "no need to install"
fi