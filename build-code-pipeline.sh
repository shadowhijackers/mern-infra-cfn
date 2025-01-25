#!/bin/bash
aws cloudformation create-stack \
  --stack-name dev-lambda-pipeline \
  --template-body file://lambda_code_pipeline.yaml \
  --parameters file://dev.json \
  --capabilities CAPABILITY_NAMED_IAM
