# AWS ECR Registry Creator

This script when ran, will prompt you for a name for your registry. Once you supply this name, it will create a Docker registry for you on AWS Elastic Container Registry. It will also associate a lifecycling policy to expire any untagged images after three days to save on storage costs.

### Requirements

* This script assumes that you have the AWS CLI default profile configured locally with the right IAM permissions.

### How Does This Work

* The script prompts you for a name for your ECR registry.
* Once you hit enter, it will proceed to create the registry and also associating the lifecycle policy with the registry.
* You could just change the policy contents to a different set of lifecycle rules, but I think the current policy in place should be fine for most cases.

### Updates

No updates planned at this time, it just works!