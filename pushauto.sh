#!/bin/bash

# Check if there are at least 2 arguments provided
if [ "$#" -lt 2 ]; then
    echo "Usage: $0 message_push main origin"
    exit 1
fi

# Assign arguments to variables
COMMIT_MESSAGE=$1
BRANCH_NAME=$2
REMOTE_NAME=${3:-origin}  # Default to 'origin' if not provided

# Add all changes
echo "Adding changes to git..."
git add .

# Commit changes with the provided message
echo "Committing changes with message: $message_push"
git commit -m "$COMMIT_MESSAGE"

# Push changes to the specified branch and remote
echo "Pushing changes to $REMOTE_NAME/$BRANCH_NAME..."
git push $REMOTE_NAME $BRANCH_NAME

echo "Done!"

