#!/usr/bin/env bash

FREEMIND_FILE=freemind-bin-max-1.0.1.zip
FREEMIND_FOLDER=freemind
DOWNLOAD_FOLDER=/home/ac/Downloads

cd $DOWNLOAD_FOLDER
wget https://ufpr.dl.sourceforge.net/project/freemind/freemind/1.0.1/$FREEMIND_FILE


# install
unzip $FREEMIND_FILE -d /usr/local/$FREEMIND_FOLDER

# create link
ln -sf /usr/local/$FREEMIND_FOLDER /opt/$FREEMIND_FOLDER

# change owner
chown -R ac:ac /opt/$FREEMIND_FOLDER/

chmod +x /opt/$FREEMIND_FOLDER/freemind.sh


echo '[Desktop Entry]' >> /opt/$FREEMIND_FOLDER/freemind.desktop
echo 'Categories=' >> /opt/$FREEMIND_FOLDER/freemind.desktop
echo 'Comment=MindMap tool' >> /opt/$FREEMIND_FOLDER/freemind.desktop
echo 'Comment[en]=MindMap tool' >> /opt/$FREEMIND_FOLDER/freemind.desktop
echo 'Encoding=UTF-8' >> /opt/$FREEMIND_FOLDER/freemind.desktop
echo 'Exec=/opt/freemind/freemind.sh' >> /opt/$FREEMIND_FOLDER/freemind.desktop
echo 'GenericName=' >> /opt/$FREEMIND_FOLDER/freemind.desktop
echo 'GenericName[en]=' >> /opt/$FREEMIND_FOLDER/freemind.desktop
echo 'Icon=' >> /opt/$FREEMIND_FOLDER/freemind.desktop
echo 'MimeType=' >> /opt/$FREEMIND_FOLDER/freemind.desktop
echo 'Name=Freemind' >> /opt/$FREEMIND_FOLDER/freemind.desktop
echo 'Name[en]=Freemind' >> /opt/$FREEMIND_FOLDER/freemind.desktop
echo 'Path=/opt/freemind/' >> /opt/$FREEMIND_FOLDER/freemind.desktop
echo 'ServiceTypes=' >> /opt/$FREEMIND_FOLDER/freemind.desktop
echo 'SwallowExec=' >> /opt/$FREEMIND_FOLDER/freemind.desktop
echo 'SwallowTitle=' >> /opt/$FREEMIND_FOLDER/freemind.desktop
echo 'Terminal=' >> /opt/$FREEMIND_FOLDER/freemind.desktop
echo 'TerminalOptions=' >> /opt/$FREEMIND_FOLDER/freemind.desktop
echo 'Type=Application' >> /opt/$FREEMIND_FOLDER/freemind.desktop
echo 'URL=' >> /opt/$FREEMIND_FOLDER/freemind.desktop
echo 'X-KDE-SubstituteUID=false' >> /opt/$FREEMIND_FOLDER/freemind.desktop
echo 'X-KDE-Username=root' >> /opt/$FREEMIND_FOLDER/freemind.desktop

cp /opt/$FREEMIND_FOLDER/freemind.desktop /usr/share/applications/

# environment
echo '' >> /home/ac/.bashrc
echo 'export PATH=$PATH:/opt/$FREEMIND_FOLDER' >> /home/ac/.bashrc
source /home/ac/.bashrc




