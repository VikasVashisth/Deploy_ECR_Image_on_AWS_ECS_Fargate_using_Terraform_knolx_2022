pipeline{
    agent any
    environment {
        AWS_ACCOUNT_ID="499400086990"
        AWS_DEFAULT_REGION="ap-south-1"
        IMAGE_REPO_NAME="sample-demo"
        IMAGE_TAG="v${env.BUILD_NUMBER}"
        REPOSITORY_URI = "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${IMAGE_REPO_NAME}"
    }
    tools{
        maven "maven"
    }
    stages{
        stage('Checking Docker version'){
            steps{
                sh 'docker -v'
            }
        }
        stage('Build the image'){
            steps{
                sh 'mvn clean install'
//                 sh 'mvn spring-boot:build-image'
            }
        }
        stage('View the image'){
            steps{
                sh 'docker image ls'
            }
        }
        stage('Logging into AWS ECR'){
            steps{
                sh 'aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 499400086990.dkr.ecr.ap-south-1.amazonaws.com'
            }
        }
        stage('Build image in ECR'){
            steps{
                script{
                    dockerImage = docker.build "${IMAGE_REPO_NAME}:${IMAGE_TAG}"
                }
            }
        }
        stage('Pushing into ECR'){
            steps{
                script{
                    sh "docker tag ${IMAGE_REPO_NAME}:${IMAGE_TAG} ${REPOSITORY_URI}:$IMAGE_TAG"
                    sh "docker push ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${IMAGE_REPO_NAME}:${IMAGE_TAG}"
                }
            }
        }
        
        
    }
}
