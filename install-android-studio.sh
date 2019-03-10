#!/usr/bin/env bash

# https://developer.android.com/studio/?hl=pt-br#downloads

STUDIO_FILE=android-studio-ide-182.5314842-linux.zip
STUDIO_FOLDER=android-studio
DOWNLOAD_FOLDER=/home/ac/Downloads

cd $DOWNLOAD_FOLDER


# install
unzip $STUDIO_FILE -d /usr/local

# create link
ln -sf /usr/local/$STUDIO_FOLDER /opt/$STUDIO_FOLDER

# change owner
chown -R ac:ac /opt/$STUDIO_FOLDER/

chmod +x /opt/$STUDIO_FOLDER/android.sh


echo '[Desktop Entry]' >> /opt/$STUDIO_FOLDER/android.desktop
echo 'Categories=' >> /opt/$STUDIO_FOLDER/android.desktop
echo 'Comment=Android Studio IDE' >> /opt/$STUDIO_FOLDER/android.desktop
echo 'Comment[en]=Android Studio IDE' >> /opt/$STUDIO_FOLDER/android.desktop
echo 'Encoding=UTF-8' >> /opt/$STUDIO_FOLDER/android.desktop
echo 'Exec=/opt/android-studio/bin/studio.sh' >> /opt/$STUDIO_FOLDER/android.desktop
echo 'GenericName=' >> /opt/$STUDIO_FOLDER/android.desktop
echo 'GenericName[en]=' >> /opt/$STUDIO_FOLDER/android.desktop
echo 'Icon=/opt/android-studio/bin/studio.png' >> /opt/$STUDIO_FOLDER/android.desktop
echo 'MimeType=' >> /opt/$STUDIO_FOLDER/android.desktop
echo 'Name=Android Studio' >> /opt/$STUDIO_FOLDER/android.desktop
echo 'Name[en]=Android Studio' >> /opt/$STUDIO_FOLDER/android.desktop
echo 'Path=/opt/android-studio/' >> /opt/$STUDIO_FOLDER/android.desktop
echo 'ServiceTypes=' >> /opt/$STUDIO_FOLDER/android.desktop
echo 'SwallowExec=' >> /opt/$STUDIO_FOLDER/android.desktop
echo 'SwallowTitle=' >> /opt/$STUDIO_FOLDER/android.desktop
echo 'Terminal=' >> /opt/$STUDIO_FOLDER/android.desktop
echo 'TerminalOptions=' >> /opt/$STUDIO_FOLDER/android.desktop
echo 'Type=Application' >> /opt/$STUDIO_FOLDER/android.desktop
echo 'URL=' >> /opt/$STUDIO_FOLDER/android.desktop
echo 'X-KDE-SubstituteUID=false' >> /opt/$STUDIO_FOLDER/android.desktop
echo 'X-KDE-Username=root' >> /opt/$STUDIO_FOLDER/android.desktop

cp /opt/$STUDIO_FOLDER/android.desktop /usr/share/applications/



