#Install software accelerated OpenGL, GLX and so on from official sources at MiniLux ...
#It take about half a hour time to be completed.
apt-get update
apt install libc-bin wget
cd
wget http://security.debian.org/debian-security/pool/updates/main/m/mesa/libgl1-mesa-swx11_10.3.2-1+deb8u2_amd64.deb
apt install /root/*mesa*swx11*.deb
cd
wget http://mirrors.kernel.org/ubuntu/pool/universe/m/mesa-demos/mesa-utils_8.4.0-1_amd64.deb
apt install /root/mesa*utils*.deb
echo After exporting DISPLAY and PULSED_... to correct XSDL server, run glxinfo to viewing OpenGL informations. Run glxdemos to testing it.
