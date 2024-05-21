#!/bin/bash


COMMIT_MESSAGE=$1
BRANCH_NAME=$2
REMOTE_NAME=${3:-origin}  # Default to 'origin' if not provided

echo "Adding changes to git..."
git add .

git commit -m "$COMMIT_MESSAGE"

echo "Pushing changes to $REMOTE_NAME/$BRANCH_NAME..."
git push $REMOTE_NAME $BRANCH_NAME
echo "Done!"

