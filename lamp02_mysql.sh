sudo apt install mysql-server -y
echo
echo "sudo mysql"
echo "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'SetRootPasswordHere';"
echo mysql> exit
echo "sudo mysql_secure_installation"
echo "More Info:"
echo "https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-20-04"
echo
# mysql> CREATE USER 'wordpress'@'localhost' IDENTIFIED WITH mysql_native_password BY '{superSecretPassword!123}';
# mysql> GRANT ALL ON `wordpress`.* TO 'wordpress'@'localhost';
