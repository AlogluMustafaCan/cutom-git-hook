#!/bin/bash

# Get the current branch
current_branch=$(git rev-parse --abbrev-ref HEAD)

# Specify restricted brach as a master branch
restricted_branch="master"

# Check if the current branch matches the restricted branch
if [ "$current_branch" = "$restricted_branch" ]; then
    echo "Commits to '$restricted_branch' branch are not allowed."
    exit 1
fi

# If the branch check passes, continue with the commit
exit 0
