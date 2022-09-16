sudo apt-get update

echo "Done!"
 
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
	
echo "Done!"	

sudo mkdir -p /etc/apt/keyrings

echo "Done!"

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "Done!"

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
echo "Done!"  

sudo apt-get update

echo "Done!"

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

echo "Done!"


echo "Post-installation steps..."

sudo groupadd docker

echo "Done!"

sudo usermod -aG docker $USER

echo "Done!"

newgrp docker

echo "Done!"

docker run hello-world

echo "Done!"

sudo systemctl enable docker.service

echo "Done!"

sudo systemctl enable containerd.service

echo "Finished!"