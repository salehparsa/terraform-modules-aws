# AWS Terraform Module

Terraform module which creates cluster solution on AWS.

Following resources are supported in this module:
* [AWS Lunch Configuration](https://docs.aws.amazon.com/autoscaling/ec2/userguide/LaunchConfiguration.html)
* [AWS Elastic Load Balancing](https://aws.amazon.com/elasticloadbalancing/)
* [AWS Elastic Auto Scaling](https://aws.amazon.com/autoscaling/)
* [AWS Security Group](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html)
* [S3 Backend Type](https://www.terraform.io/docs/backends/types/s3.html)

## Pre-requisites

* You must have [Terraform](https://www.terraform.io/) installed on your computer.
* You must have an [Amazon Web Services (AWS) account](http://aws.amazon.com/).

This templated tested with Terraform v0.11.11 and provider.aws v1.54.0.

## Configure AWS Access Key

Technically, [Terraform](https://www.terraform.io) can read AWS Access Key from `env` file. Thus, you can configure AWS Access Key with [AWS CLI](https://docs.aws.amazon.com/cli/latest/reference/configure/index.html):

```
aws configure
```

Configure your [AWS access keys](http://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys) as
environment variables:

```
export AWS_ACCESS_KEY_ID=(your access key id)
export AWS_SECRET_ACCESS_KEY=(your secret access key)
```
## Usage

By cloning this repository:

```hcl
module "cluster_application" {
  source = "(Path to Your Module)/modules/cluster_application"

  cluster_name           = "cluster-staging"
  db_remote_state_bucket = "${var.db_remote_state_bucket}"
  db_remote_state_key    = "${var.db_remote_state_key}"

  instance_type = "t2.micro"
  min_size      = 1
  max_size      = 2
}
```

By using the released version:

```hcl
module "cluster_application" {
  source = "git@github.com:salehparsa/terraform-modules-aws.git"
  version = "1.0.0"

  cluster_name           = "cluster-staging"
  db_remote_state_bucket = "${var.db_remote_state_bucket}"
  db_remote_state_key    = "${var.db_remote_state_key}"

  instance_type = "t2.micro"
  min_size      = 1
  max_size      = 2
}
```
