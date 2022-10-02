sudo apt install mysql-server -y
# sudo mysql_secure_installation
echo
echo "sudo mysql"
echo "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'SetRootPasswordHere';"
# mysql> exit
sudo mysql_secure_installation
echo "More Info:"
echo "https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-20-04"
echo
