#!/usr/bin/env bash

# http://squirrel-sql.sourceforge.net/

SQUIRREL_FILE=squirrel-sql-3.8.1-standard.jar
SQUIRREL_FOLDER=/home/ac/Local/squirrel-sql-3.9.1
DOWNLOAD_FOLDER=/home/ac/Downloads

cd $DOWNLOAD_FOLDER

java -jar $SQUIRREL_FOLDER/$SQUIRREL_FILE

rm $SQUIRREL_FOLDER/squirrel.desktop

echo '[Desktop Entry]' >> $SQUIRREL_FOLDER/squirrel.desktop
echo 'Categories=' >> $SQUIRREL_FOLDER/squirrel.desktop
echo 'Comment=SQL tool' >> $SQUIRREL_FOLDER/squirrel.desktop
echo 'Comment[en]=SQL tool' >> $SQUIRREL_FOLDER/squirrel.desktop
echo 'Encoding=UTF-8' >> $SQUIRREL_FOLDER/squirrel.desktop
echo 'Exec=java -jar /home/ac/Local/squirrel-sql-3.9.1/squirrel-sql.jar' >> $SQUIRREL_FOLDER/squirrel.desktop
echo 'GenericName=' >> $SQUIRREL_FOLDER/squirrel.desktop
echo 'GenericName[en]=' >> $SQUIRREL_FOLDER/squirrel.desktop
echo 'Icon=/home/ac/Local/squirrel-sql-3.9.1/icons/splash.jpg' >> $SQUIRREL_FOLDER/squirrel.desktop
echo 'MimeType=' >> $SQUIRREL_FOLDER/squirrel.desktop
echo 'Name=Squirrel' >> $SQUIRREL_FOLDER/squirrel.desktop
echo 'Name[en]=Squirrel' >> $SQUIRREL_FOLDER/squirrel.desktop
echo 'Path=/home/ac/Local/squirrel-sql-3.9.1' >> $SQUIRREL_FOLDER/squirrel.desktop
echo 'ServiceTypes=' >> $SQUIRREL_FOLDER/squirrel.desktop
echo 'SwallowExec=' >> $SQUIRREL_FOLDER/squirrel.desktop
echo 'SwallowTitle=' >> $SQUIRREL_FOLDER/squirrel.desktop
echo 'Terminal=' >> $SQUIRREL_FOLDER/squirrel.desktop
echo 'TerminalOptions=' >> $SQUIRREL_FOLDER/squirrel.desktop
echo 'Type=Application' >> $SQUIRREL_FOLDER/squirrel.desktop
echo 'URL=' >> $SQUIRREL_FOLDER/squirrel.desktop
echo 'X-KDE-SubstituteUID=false' >> $SQUIRREL_FOLDER/squirrel.desktop
echo 'X-KDE-Username=root' >> $SQUIRREL_FOLDER/squirrel.desktop

cp $SQUIRREL_FOLDER/squirrel.desktop /usr/share/applications/
