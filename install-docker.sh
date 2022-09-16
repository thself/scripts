sudo apt-get update

echo "Update Done!"
 
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
	
echo "Certificates Done!"

sudo mkdir -p /etc/apt/keyrings

echo "keyrings dir Done!"

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "gpg Imported!"

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
echo "Docker-list Done!"

sudo apt-get update

echo "Update Done!"

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

echo "Docker Installation Done!"

echo "Post-installation steps..."

sudo groupadd docker

echo "Done!"

sudo usermod -aG docker $USER

echo "user added to docker group!"