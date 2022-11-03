
echo "create new key-pair"
aws ec2 create-key-pair --key-name k8s-demo --query 'KeyMaterial' --output text> k8s-demo.pem


---
echo "build eks cluster"
eksctl create cluster --name k8s-demo --region us-east-1 --nodegroup-name k8s-demo --nodes 2 --node-type=t2.medium --ssh-access --ssh-public-key k8s-demo --managed