# README - TEAM 4 - JULY DEVOPS COHORT 2020

[TOC]

## Project Summary - 

GitHub - https://github.com/FP-T4/DevOps-Final

JIRA -

Presentation - https://docs.google.com/presentation/d/1p8sLxj92gDXeC7vLiV8LVWazdrUlEUyVo8wa92VAP_4/edit?usp=sharing

## Project Brief -

Deploy a two part application which has been externally developed in accordance to DevOps principles on a cloud based system network.

### Requirements - 

"You will need to plan, design and implement a solution for automating the development workflows and deployments of this application. As part of your final deliverable you will need to discuss the project in a presentation and demonstrate these workflows." - Brief

### Workflow -

We operated in an Agile workflow beginning with a MOSCOW breakdown of the tasks involved in the project

## Achievements & Failures 

### Achievements

- Application was deployed on AWS fully and is functioning
- CloudWatch can effectively monitor the services and is able to send alerts for notable server load
- Automated provisioning of AWS resources which can be torn down at all
- Automated installation of required software through Ansible 

### Failures

- Jenkins CI Build Server - Server would not recreate after first teardown of Terraform built resources
- Automated RDS Connection - Module for automatic RDS creation was not complete on time

## Acknowledgements

- Team 4 without who this project would not be possible
- Luke Benson & Harry Volker, our Academy tutors
