

ECLIPSE_FOLDER=/home/ac/Local/sts-4.10.0.RELEASE
DOWNLOAD_FOLDER=/home/ac/Downloads

echo '[Desktop Entry]' > $ECLIPSE_FOLDER/eclipse.desktop
echo 'Categories=' >> $ECLIPSE_FOLDER/eclipse.desktop
echo 'Comment=IDE tool' >> $ECLIPSE_FOLDER/eclipse.desktop
echo 'Comment[en]=IDE tool' >> $ECLIPSE_FOLDER/eclipse.desktop
echo 'Encoding=UTF-8' >> $ECLIPSE_FOLDER/eclipse.desktop
echo 'Exec=/home/ac/Local/sts-4.10.0.RELEASE/SpringToolSuite4' >> $ECLIPSE_FOLDER/eclipse.desktop
echo 'GenericName=' >> $ECLIPSE_FOLDER/eclipse.desktop
echo 'GenericName[en]=' >> $ECLIPSE_FOLDER/eclipse.desktop
echo 'Icon=/home/ac/Local/sts-4.10.0.RELEASE/icon.xpm' >> $ECLIPSE_FOLDER/eclipse.desktop
echo 'MimeType=' >> $ECLIPSE_FOLDER/eclipse.desktop
echo 'Name=Eclipse' >> $ECLIPSE_FOLDER/eclipse.desktop
echo 'Name[en]=Eclipse' >> $ECLIPSE_FOLDER/eclipse.desktop
echo 'Path=/home/ac/Local/sts-4.10.0.RELEASE' >> $ECLIPSE_FOLDER/eclipse.desktop
echo 'ServiceTypes=' >> $ECLIPSE_FOLDER/eclipse.desktop
echo 'SwallowExec=' >> $ECLIPSE_FOLDER/eclipse.desktop
echo 'SwallowTitle=' >> $ECLIPSE_FOLDER/eclipse.desktop
echo 'Terminal=' >> $ECLIPSE_FOLDER/eclipse.desktop
echo 'TerminalOptions=' >> $ECLIPSE_FOLDER/eclipse.desktop
echo 'Type=Application' >> $ECLIPSE_FOLDER/eclipse.desktop
echo 'URL=' >> $ECLIPSE_FOLDER/eclipse.desktop
echo 'X-KDE-SubstituteUID=false' >> $ECLIPSE_FOLDER/eclipse.desktop
echo 'X-KDE-Username=root' >> $ECLIPSE_FOLDER/eclipse.desktop

cp $ECLIPSE_FOLDER/eclipse.desktop ~/.local/share/applications
