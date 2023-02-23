#!/bin/bash
set -x
 
commit_hash=$(git rev-parse HEAD)
DEPLOY_ID=$(aws deploy create-deployment --application-name drill --deployment-group-name drill --github-location repository=$GITHUB_REPOSITORY,commitId=$commit_hash --ignore-application-stop-failures --file-exists OVERWRITE --output text)

while true; do
  STATUS=$(aws deploy get-deployment --deployment-id $DEPLOY_ID --query 'deploymentInfo.status' --output text)
  if [ $STATUS != "InProgress" ]; then
    if [ $STATUS = "Succeeded" ]; then
       echo "SUCCESS"
       exit 0
    else
       echo "Failed"
       exit 1
    fi
  else
    echo "Deploying.."
  fi
     sleep 30
done
