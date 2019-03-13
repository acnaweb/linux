#!/usr/bin/env bash


# **********************************************************************
# anaconda.com - corporativo
# anaconda.org - cloud
# https://repo.continuum.io/archive/

wget https://repo.continuum.io/archive/Anaconda3-5.2.0-Linux-x86_64.sh
jupyter.org

bash Anaconda3-5.2.0-Linux-x86_64.sh

ln -fs /home/ac/Local/anaconda3/bin/python3.6 /usr/bin/
ln -fs /home/ac/Local/anaconda3/bin/conda /usr/bin/
ln -fs /home/ac/Local/anaconda3/bin/pip /usr/bin/




# **********************************************************************
# jupiter lab
# install
conda install -c conda-forge jupyterlab 

ln -fs /home/ac/Local/anaconda3/bin/jupyter /usr/bin/

#run 
jupyter lab


# **********************************************************************
# jupiter notebook
jupiter notebook



# **********************************************************************
PYCHARM_FILE=pycharm-community-2018.3.5.tar.gz
PYCHARM_FOLDER=pycharm-community-2018.3.5
DOWNLOAD_FOLDER=/home/ac/Downloads

cd $DOWNLOAD_FOLDER

# uncompress
tar -xzf $PYCHARM_FILE --directory /usr/local

# create link
ln -fs /usr/local/$PYCHARM_FOLDER/ /opt/pycharm

chown -R ac:ac /opt/pycharm

echo '[Desktop Entry]' > /opt/pycharm/pycharm.desktop
echo 'Categories=' >> /opt/pycharm/pycharm.desktop
echo 'Comment=IDE tool' >> /opt/pycharm/pycharm.desktop
echo 'Comment[en]=IDE tool' >> /opt/pycharm/pycharm.desktop
echo 'Encoding=UTF-8' >> /opt/pycharm/pycharm.desktop
echo 'Exec=/opt/pycharm/bin/pycharm.sh' >> /opt/pycharm/pycharm.desktop
echo 'GenericName=' >> /opt/pycharm/pycharm.desktop
echo 'GenericName[en]=' >> /opt/pycharm/pycharm.desktop
echo 'Icon=/opt/pycharm/bin/pycharm.png' >> /opt/pycharm/pycharm.desktop
echo 'MimeType=' >> /opt/pycharm/pycharm.desktop
echo 'Name=PyCharm' >> /opt/pycharm/pycharm.desktop
echo 'Name[en]=PyCharm' >> /opt/pycharm/pycharm.desktop
echo 'Path=/opt/pycharm' >> /opt/pycharm/pycharm.desktop
echo 'ServiceTypes=' >> /opt/pycharm/pycharm.desktop
echo 'SwallowExec=' >> /opt/pycharm/pycharm.desktop
echo 'SwallowTitle=' >> /opt/pycharm/pycharm.desktop
echo 'Terminal=' >> /opt/pycharm/pycharm.desktop
echo 'TerminalOptions=' >> /opt/pycharm/pycharm.desktop
echo 'Type=Application' >> /opt/pycharm/pycharm.desktop
echo 'URL=' >> /opt/pycharm/pycharm.desktop
echo 'X-KDE-SubstituteUID=false' >> /opt/pycharm/pycharm.desktop
echo 'X-KDE-Username=root' >> /opt/pycharm/pycharm.desktop

cp /opt/pycharm/pycharm.desktop /usr/share/applications/

# check
python

update-alternatives --install /usr/bin/python python /usr/bin/python2.7 50
update-alternatives --install /usr/bin/python python /usr/bin/python3.5 40
update-alternatives --install /usr/bin/python python /usr/local/python3.6 30
update-alternatives --config python



