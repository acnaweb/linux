#!/usr/bin/env bash

#https://www.getpostman.com/

POSTMAN_FILE=Postman-linux-x64-6.7.4.tar.gz
POSTMAN_FOLDER=Postman
DOWNLOAD_FOLDER=/home/ac/Downloads

cd $DOWNLOAD_FOLDER

# uncompress
rm -Rf $POSTMAN_FOLDER
tar -xzf $POSTMAN_FILE --directory /usr/local


# create link
ln -fs /usr/local/$POSTMAN_FOLDER/ /opt/$POSTMAN_FOLDER

# change owner
chown -R ac:ac /opt/$POSTMAN_FOLDER


echo '[Desktop Entry]' >> /opt/$POSTMAN_FOLDER/postman.desktop
echo 'Categories=' >> /opt/$POSTMAN_FOLDER/postman.desktop
echo 'Comment=API tool' >> /opt/$POSTMAN_FOLDER/postman.desktop
echo 'Comment[en]=API tool' >> /opt/$POSTMAN_FOLDER/postman.desktop
echo 'Encoding=UTF-8' >> /opt/$POSTMAN_FOLDER/postman.desktop
echo 'Exec=/opt/Postman/Postman' >> /opt/$POSTMAN_FOLDER/postman.desktop
echo 'GenericName=' >> /opt/$POSTMAN_FOLDER/postman.desktop
echo 'GenericName[en]=' >> /opt/$POSTMAN_FOLDER/postman.desktop
echo 'Icon=' >> /opt/$POSTMAN_FOLDER/postman.desktop
echo 'MimeType=' >> /opt/$POSTMAN_FOLDER/postman.desktop
echo 'Name=Postman' >> /opt/$POSTMAN_FOLDER/postman.desktop
echo 'Name[en]=Postman' >> /opt/$POSTMAN_FOLDER/postman.desktop
echo 'Path=/opt/Postman' >> /opt/$POSTMAN_FOLDER/postman.desktop
echo 'ServiceTypes=' >> /opt/$POSTMAN_FOLDER/postman.desktop
echo 'SwallowExec=' >> /opt/$POSTMAN_FOLDER/postman.desktop
echo 'SwallowTitle=' >> /opt/$POSTMAN_FOLDER/postman.desktop
echo 'Terminal=' >> /opt/$POSTMAN_FOLDER/postman.desktop
echo 'TerminalOptions=' >> /opt/$POSTMAN_FOLDER/postman.desktop
echo 'Type=Application' >> /opt/$POSTMAN_FOLDER/postman.desktop
echo 'URL=' >> /opt/$POSTMAN_FOLDER/postman.desktop
echo 'X-KDE-SubstituteUID=false' >> /opt/$POSTMAN_FOLDER/postman.desktop
echo 'X-KDE-Username=root' >> /opt/$POSTMAN_FOLDER/postman.desktop

cp /opt/$POSTMAN_FOLDER/postman.desktop /usr/share/applications/

# environment
echo '' >> /home/ac/.bashrc
echo 'export PATH=$PATH:/opt/$POSTMAN_FOLDER' >> /home/ac/.bashrc
source /home/ac/.bashrc

