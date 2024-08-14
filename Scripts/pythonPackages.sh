#!/bin/bash

# Prompt the user for the environment name and whether to create a new environment
read -p "Do you want to create a new python environment? (y/n): " CREATE_ENV

if [ "$CREATE_ENV" == "y" ]; then
    read -p "Enter environment name: " ENV_NAME
    python3 -m venv /home/ubuntu/Projects/Py_Env$ENV_NAME
    
    echo "New python environment '$ENV_NAME' created and installing packages!"
else
    echo "Skipping environment creation and updating packages!"

fi

# Activate the python environment
source /home/ubuntu/Projects/Py_Env/$ENV_NAME/bin/activate

# install hugging face CLI
pip install -U "huggingface_hub[cli]"

# install packages for AI
pip install -U transformers
pip install -U diffusers
pip install -U datasets
pip install -U torch
pip install -U tensorflow
pip install -U sentencepiece
pip install -U scipy
pip install -U numpy
pip install -U pandas

# install package for Full Stack Dev
pip install -U Flask
pip install -U Flask-SQLAlchemy
pip install -U Flask-Migrate
pip install -U Flask-WTF
pip install -U requests