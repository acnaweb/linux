# https://www.copahost.com/blog/grant-mysql-remote-access/
sudo apt-get install mysql-server


# /etc/mysql/my.cnf
bind-address = 0.0.0.0

sudo service mysql top
sudo service mysql start

mysql -u root -p

GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '905103' WITH GRANT OPTION;

FLUSH PRIVILEGES;
exit;

