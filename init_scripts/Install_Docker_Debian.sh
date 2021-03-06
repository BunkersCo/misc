sudo apt-get remove docker docker-engine docker.io
sudo apt-get update
sudo apt-get install -y git build-essential dkms gcc linux-headers-$(uname -r) apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce
cd /tmp
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install docker-compose
cd ~
mkdir docker
sudo usermod -aG docker <USERNAME>
