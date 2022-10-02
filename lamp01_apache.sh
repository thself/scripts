sudo apt update && sudo apt install apache2 -y
sudo ufw app list
sudo ufw allow in "Apache"
sudo ufw status
# find ip:
echo
echo "Your IP is:"
echo
curl http://icanhazip.com
echo
