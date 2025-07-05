### Project Overview

This is a project that builds a python docker image using dockerfile and docker installed on the jenkins server. This docker image was pushed into elastic container registry (ECR), using jenkins pipeline.
Initially, i had to provision the jenkins server using terraform (IAC).

### Tools Stack

i. AWS CLI - installed on the jenkins server,enable you to interface with AWS infrastructure.

ii. AWS configure - to insert Access-key and Secret-key, including Region and json format.

iii. Docker - installed on jenkins server, to enable you build docker images

iv. Terraform - installed locally on your machine, to enable you provision an ec2 instance called jenkins-server

v. ECR - created within AWS infrastructure to house the docker image

vi. Jenkins - installed and configured to run jenkins pipeline.

vii. Vscode - code editor installed locally on your machine.

viii. GitHub - a repository for your project code

https://github.com/alokaneunice/flask-app-jenkins-aws-ecr.git

### Project Workflow

### STAGE 1
#### Step 1

Created a python application

collected all the project dependencies or libraries for the project and stored inside "requirements.txt"

pip freeze >> requirements.txt

#### Step 2

run and test the project locally , to ensure it is working

i. $ python app.py

ii. localhost:5002

#### Step 3

created a dockerfile to build docker image for the project

<img width="1184" height="565" alt="Image" src="https://github.com/user-attachments/assets/e10ca7fd-21fd-480e-92d2-e54ee8751183" />


to build the application container locally

$ docker run --name web-container -dp port 5002:5002 <imagename>:latest

to exec into the container

 $ docker exec web-container -- sh

 $ exit

run the following command to build the docker image in the jenkins pipeline.

dockerImage = docker.build "${IMAGE_REPO_NAME}:${IMAGE_TAG}"

#### Step 4

to provision ec2 instance called jenkins-server using terraform

 $ cd infra 

 $ ls

 <img width="456" height="404" alt="Image" src="https://github.com/user-attachments/assets/a1becef4-1ab0-4fcb-86d6-6a43885cc248" />

 #### Step 5
 
 to run terraform commands

  $ terraform init

  $ terraform fmt

  $ terraform plan

  $ terraform apply --auto-approve

### STAGE 2


