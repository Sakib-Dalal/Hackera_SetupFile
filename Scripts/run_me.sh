# update and upgrade packages
sudo apt-get -y update
sudo apt-get upgrade

# install git 
sudo apt install git

# install python3
sudo apt install -U python3
python3 --version

# install pip
sudo apt install -U pip 
pip --version

# install python environment
sudo apt install -U python3-venv

# setup and install docker
sudo snap install docker 
sudo docker --version

# install neofetch and run
sudo apt install -U neofetch
neofetch