***
# Description

This repo has been created to give the session on Knolx 28 Oct 2022.

Related to topics :-

* Docker
* Jenkins
* Terraform
* AWS ECS , ECR , ECS, Fargate

Here in this session a java based spring boot with maven tool application has been deploy using the ECR image that hsa been build on Jenkins CI pipeline using the Jenkins file and Dockerfile. 
The image is deployed using the terraform script where it is creating ALB, ECS Fargate and private VPC and many more things.

***
## Notes

Step 1: Launch Ec2 Instance

Step 2: Install Jenkins

Step 3: Install Docker

Step 4: Install Git

Step 5: Connect github repo with jenkins pipeline 

Step 6: Install docker-compose

Step 7:permission error [sudo chmod 777 /var/run/docker.sock]

Step 8: add ECR to instance and give role to the instance

Step 9: Install awscli [sudo apt  install awscli -y]

Step 10: Configure terraform code (like version build in variable file)

---

Docker Installation
Official Documentation:-
https://docs.docker.com/engine/install/ubuntu/
https://docs.docker.com/engine/install/linux-postinstall/

Uninstall docker  completely:-https://askubuntu.com/questions/935569/how-to-completely-uninstall-docker

sudo chmod 777 /var/run/docker.sock

Video's for Help:-
https://www.youtube.com/watch?v=aMKUuaga85A
https://www.youtube.com/watch?v=vU0jyDGGUUE

Jenkins Installation Offical Document
https://www.jenkins.io/doc/tutorials/tutorial-for-installing-jenkins-on-AWS/

Video:-https://www.youtube.com/watch?v=jmm8DsosBqw
check:-https://www.jenkins.io/doc/tutorials/tutorial-for-installing-jenkins-on-AWS/

Git Installation

sudo yum update -y
sudo yum install git -y
which git

https://github.com/VikasVashisth/jenkins-maven-java-sample.git

https://www.youtube.com/watch?v=-5tA3hZTVfA

Webhook Trigger Github Project on Jenkins
https://medium.com/@dillson/triggering-a-jenkins-pipeline-on-git-push-321d29a98cf3


Trigger build from commit on CI jenkins from github:-https://www.edureka.co/community/49753/auto-build-job-jenkins-there-change-code-github-repository
***
Terraform commands:-

`terraform init`

`terraform plan`

`terraform apply --auto-approve`

***