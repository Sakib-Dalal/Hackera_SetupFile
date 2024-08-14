# python3 version
echo "Current python3 version: "
python3 --version

# which python3 using
echo "Which python is currently using: "
which python3

# pip version
echo "pip version:" 
pip --version

# list installed packages 
read -p "Do you need installed packages list? (y/n): " PIP_LIST

if [ "$PIP_LIST" == "y" ]; then
    pip list
else
    echo "Skipping PIP list"
fi
    echo ""
