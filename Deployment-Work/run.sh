aws ecr create-repository --repository-name hello-world3 --region ap-south-1
{
    "repository": {
        "repositoryArn": "arn:aws:ecr:ap-south-1:464392538707:repository/hello-world3",
        "registryId": "464392538707",
        "repositoryName": "hello-world3",
        "repositoryUri": "464392538707.dkr.ecr.ap-south-1.amazonaws.com/hello-world3",
        "createdAt": "2020-09-06T11:26:43-04:00",
        "imageTagMutability": "MUTABLE",
        "imageScanningConfiguration": {
            "scanOnPush": false
        },
        "encryptionConfiguration": {
            "encryptionType": "AES256"
        }
    }
