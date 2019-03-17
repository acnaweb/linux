#!/usr/bin/env bash

# steam dependencies
# https://www.edivaldobrito.com.br/como-fazer-o-cliente-steam-funcionar-apos-erro-com-bibliotecas-de-32-bits/
apt -y install libc6-i386 libxtst6:i386 libxrandr2:i386 libglib2.0-0:i386 libgtk2.0-0:i386 libpulse0:i386 libgdk-pixbuf2.0-0:i386
apt -y install libgl1-mesa-glx:i386

echo '/usr/lib32' > /etc/ld.so.conf.d/steam.conf
echo '/usr/lib/i386-linux-gnu/mesa' >> /etc/ld.so.conf.d/steam.conf
ldconfig

