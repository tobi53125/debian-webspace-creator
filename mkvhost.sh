echo '<VirtualHost *:80>
        ServerName '$1'
        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/'$1'/
        <Directory /var/www/'$1'/>
                Options Indexes FollowSymLinks MultiViews
                AllowOverride None
                Order allow,deny
                allow from all
        </Directory>
        ErrorLog /var/log/apache2/error.log
        LogLevel warn
        CustomLog /var/log/apache2/access.log combined
        ServerSignature On
</VirtualHost>' > /etc/apache2/sites-available/$1.conf

mkdir /var/www/$1
chmod 777 /var/www/$1 -R

a2ensite $1.conf
service apache2 reload

useradd $1 -d /var/www/$1
echo $1:$2 | chpasswd

echo "
Match User $1
MaxSessions 0
" >> /etc/ssh/sshd_config
service ssh reload
