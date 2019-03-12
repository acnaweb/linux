#!/usr/bin/env bash

ECLIPSE_FILE=eclipse-jee-2018-12-R-linux-gtk-x86_64.tar.gz
ECLIPSE_FOLDER=eclipse
DOWNLOAD_FOLDER=/home/ac/Downloads

cd $DOWNLOAD_FOLDER

# uncompress
rm -Rf $ECLIPSE_FOLDER
tar -xzf $ECLIPSE_FILE 

# move to /usr/local
rm -Rf /usr/local/$ECLIPSE_FOLDER/
mv $ECLIPSE_FOLDER/ /usr/local

# create link
ln -fs /usr/local/$ECLIPSE_FOLDER/ /opt/$ECLIPSE_FOLDER

 
chown -R ac:ac /opt/$ECLIPSE_FOLDER

echo '[Desktop Entry]' > /opt/$ECLIPSE_FOLDER/eclipse.desktop
echo 'Categories=' >> /opt/$ECLIPSE_FOLDER/eclipse.desktop
echo 'Comment=IDE tool' >> /opt/$ECLIPSE_FOLDER/eclipse.desktop
echo 'Comment[en]=IDE tool' >> /opt/$ECLIPSE_FOLDER/eclipse.desktop
echo 'Encoding=UTF-8' >> /opt/$ECLIPSE_FOLDER/eclipse.desktop
echo 'Exec=/opt/eclipse/eclipse' >> /opt/$ECLIPSE_FOLDER/eclipse.desktop
echo 'GenericName=' >> /opt/$ECLIPSE_FOLDER/eclipse.desktop
echo 'GenericName[en]=' >> /opt/$ECLIPSE_FOLDER/eclipse.desktop
echo 'Icon=/opt/eclipse/icon.xpm' >> /opt/$ECLIPSE_FOLDER/eclipse.desktop
echo 'MimeType=' >> /opt/$ECLIPSE_FOLDER/eclipse.desktop
echo 'Name=Eclipse' >> /opt/$ECLIPSE_FOLDER/eclipse.desktop
echo 'Name[en]=Eclipse' >> /opt/$ECLIPSE_FOLDER/eclipse.desktop
echo 'Path=/opt/eclipse' >> /opt/$ECLIPSE_FOLDER/eclipse.desktop
echo 'ServiceTypes=' >> /opt/$ECLIPSE_FOLDER/eclipse.desktop
echo 'SwallowExec=' >> /opt/$ECLIPSE_FOLDER/eclipse.desktop
echo 'SwallowTitle=' >> /opt/$ECLIPSE_FOLDER/eclipse.desktop
echo 'Terminal=' >> /opt/$ECLIPSE_FOLDER/eclipse.desktop
echo 'TerminalOptions=' >> /opt/$ECLIPSE_FOLDER/eclipse.desktop
echo 'Type=Application' >> /opt/$ECLIPSE_FOLDER/eclipse.desktop
echo 'URL=' >> /opt/$ECLIPSE_FOLDER/eclipse.desktop
echo 'X-KDE-SubstituteUID=false' >> /opt/$ECLIPSE_FOLDER/eclipse.desktop
echo 'X-KDE-Username=root' >> /opt/$ECLIPSE_FOLDER/eclipse.desktop

cp /opt/$ECLIPSE_FOLDER/eclipse.desktop /usr/share/applications/

ln -fs /opt/jre /opt/eclipse/
