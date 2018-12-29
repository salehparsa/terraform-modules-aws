# Terraform Modules for AWS

This module contains ELB, Auto Scaling Group, Security Groups and Remote State configurations to avoid DRY during deployment.

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
