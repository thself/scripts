# sudo mkdir /var/www/your_domain
# sudo chown -R $USER:$USER /var/www/your_domain
# sudo nano /etc/apache2/sites-available/your_domain.conf

#<VirtualHost *:80>
#    ServerName your_domain
#    ServerAlias www.your_domain
#    ServerAdmin webmaster@localhost
#    DocumentRoot /var/www/your_domain
#    ErrorLog ${APACHE_LOG_DIR}/error.log
#    CustomLog ${APACHE_LOG_DIR}/access.log combined
#</VirtualHost>

# sudo a2ensite your_domain
# sudo a2dissite 000-default
# sudo apache2ctl configtest
# sudo systemctl reload apache2
# nano /var/www/your_domain/index.html

#<html>
#  <head>
#    <title>your_domain website</title>
#  </head>
#  <body>
#    <h1>Hello World!</h1>
#
#    <p>This is the landing page of <strong>your_domain</strong>.</p>
#  </body>
#</html>

# http://server_domain_or_IP
