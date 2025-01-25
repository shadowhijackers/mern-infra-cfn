#!/bin/bash
aws cloudformation create-stack \
  --stack-name dev-lambda-pipeline \
  --template-body file://lambda_code_pipeline.yaml \
  --parameters ParameterKey=GitHubOwner,ParameterValue=Nagaraj104065 \
               ParameterKey=GitHubRepo,ParameterValue=graphql-js-aws \
               ParameterKey=GitHubOAuthToken,ParameterValue=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 \
               ParameterKey=CodePipelineBucketPrefix,ParameterValue=dev-pos-lambda-pipeline \
               ParameterKey=Environment,ParameterValue=dev \
  --capabilities CAPABILITY_NAMED_IAM
