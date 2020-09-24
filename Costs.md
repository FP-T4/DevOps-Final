# Cost & Pricing Analysis Of Tools Used

[TOC]

## AWS (Amazon Web Services)

We opted for keeping our entire service ecosystem within AWS as we felt the inherent compatibility was too strong to ignore in terms of advantages. Making use of AWS also allowed us to best make us of our combined expertise and reduces the amount of required providers down to just one, meaning out service isn't reliant on an external provider at any point and is thus more resilient. 

### EC2 (Elastic Compute Service) - Controller Node - 9.31 USD

We made use of a single deployed EC2 which acted as our build server and controller node for the Kubernetes cluster. By making use of only the smallest machine we can save monthly cost as new deployments and adjustments do not need high consistent power.

### EKS (Elastic Kubernetes Service) - App Deployment - 63.40 USD

We deployed our application with Kubernetes via AWS EKS system. We opted for EKS to remain in the AWS ecosystem to both leverage experience and to minimise points of failure for the services being hosted on the cloud. 

### RDS (Relational Database Service) - Database Hosting - 15.68 USD

Our database is hosted by AWS as an RDS instance for ease of compatibility with the rest of the services as well as being part of the AWS ecosystem thus minimising potential points of failure within. 

### Amazon CloudWatch - Monitoring - 4.67 USD

Amazon CloudWatch plays the role of monitoring our systems hosted on AWS and will send alerts if certain conditions are met so engineers can response to them.

This function only costs very little in terms of monthly expenditure and provides excellent coverage for cost meaning even a highly tailored monitoring set-up is the cheapest item while providing arguably core features for continued DevOps interactions with the deployed application.

### Amazon VPC - Service Hosting - Included

Our deployment makes uses of an Amazon VPC and included features (Subnet, Internet Gateway, Route Tables, etc.) 

### Total Costs

You can find the calculator containing the estimate at this link: https://calculator.aws/#/estimate?id=8413dcf227b9acf8fe72f005b3514b5cbe404f3e 

## Pipeline Tools

Listed below are all the tools involved in the production and maintenance of the CI pipeline which was used during our project.

### GitHub - Version Control System - Free

### Terraform - Resource Provisioning - Free

### Jenkins - CI Build Server - Free

### NGINX - Load Balancer - Free

### Kubernetes - Container Deployment/Management - Free

### Docker - Containerisation - Free

### Total Costs

All tools used in the delivery as well as creation and maintenance of the CI pipeline are free to use and thus have no added to the monthly expenditure of the deployment of this project. 