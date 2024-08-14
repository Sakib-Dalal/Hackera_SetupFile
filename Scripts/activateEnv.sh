#!/bin/bash

# Directory where virtual environments are stored
ENV_DIR="/home/ubuntu/Projects/Py_Env"

# List available environments
echo "Available environments:"
if [ "$(ls -A $ENV_DIR)" ]; then
    ls $ENV_DIR
else
    echo "No environments found in $ENV_DIR."
fi

# Prompt the user for the environment name
echo "Enter the environment name to activate: "
read ENV_NAME

# Check if the environment name was provided
if [ -z "$ENV_NAME" ]; then
    echo "No environment name provided. Exiting."
    exit 1
fi

# Construct the path to the environment
ENV_PATH="$ENV_DIR/$ENV_NAME"

# Check if the environment directory exists
if [ -d "$ENV_PATH/bin" ]; then
    # Activate the environment
    source "$ENV_PATH/bin/activate"
    echo "Environment '$ENV_NAME' activated!"
else
    echo "Environment '$ENV_NAME' does not exist."
fi
