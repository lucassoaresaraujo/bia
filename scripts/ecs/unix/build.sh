ECR_REGISTRY="SEU_REGISTRY"
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $ECR_REGISTRY
docker build -t ms-orders .
docker tag bia:latest $ECR_REGISTRY/ms-orders:latest
docker push $ECR_REGISTRY/ms-orders:latest
