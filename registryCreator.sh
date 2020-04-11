echo "** AWS ECR Registry Creator **"
read -p "Enter the name you want for your registry: " registryName
echo "** Creating Registry **"
aws ecr create-repository --repository-name $registryName
echo "** Applying Standard Lifecycle Policy **"
aws ecr put-lifecycle-policy --repository-name $registryName --lifecycle-policy-text "file://lifecyclePolicy.json"
echo "** ECR Registry Created **"