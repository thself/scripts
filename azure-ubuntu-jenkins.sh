#!/bin/bash
sudo apt update
sudo apt install openjdk-11-jre
echo
echo
java -version
echo
echo
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
echo
echo
echo "Installation succesful!"
echo
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins > /dev/null
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo "<<<copy the string above and paste it to your browser>>>"
