echo "delete cluster"
eksctl delete cluster --region=us-east-1 --name=k8s-demo

echo "delete keypem"
aws ec2 delete-key-pair --key-name k8s-demo
