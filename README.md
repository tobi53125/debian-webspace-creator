# debian-webspace-creator
GERMAN (English coming soon):

Für die Installation müssen folgende Schritte befolgt werden:

1. Apache2, PHP und proftpd installieren (Befehl: "apt-get install apache2 php5 libapache2-mod-php5 proftpd sudo nano") Bei der Installation von proftp "standalone" als Servertyp wählen, wenn danach gefragt wird.
2. "service apache2 restart"
3. Die Datei mkvhost.sh in /root kopieren (zum Beispiel über Filezilla und SFTP)
4. "chmod 777 /root/mkvhost.sh" ausführen
5. die index.php in den Webroot kopieren (zum Beispiel über Filezilla und SFTP)
6. "www-data ALL=(ALL) NOPASSWD: /root/mkvhost.sh" in /etc/sudoers am Ende einfügen
7. "service sudo restart"
