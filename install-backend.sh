echo Award Backend Installer By Nego#1000
echo Credits : https://nego-dev.com
sleep 2
echo Nodejs Installing...
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install node #
sleep 2
echo NodeJS Installed
sleep 2
echo Connecting Git...
sleep 2
echo Installing Git
sleep 2
sudo apt install git-all
sleep 2
echo Git Installed
sleep 2
mkdir /home/awardBackend
cd /home/awardBackend
git clone https://github.com/HelloAward/api.awardbot.me.git
echo Infrastructure Installed !
sleep 2
echo UnZipping...
sleep 2
echo UnZipped

cd api.awardbot.me
sleep 2
echo Installation Finished
##ftp
echo FTP Client Installing...
sleep 2
sudo apt install vsftpd
sudo systemctl start vsftpd
sudo systemctl enable vsftpd
sudo cp /etc/vsftpd.conf  /etc/vsftpd.conf_default
sudo useradd -m nego
sudo passwd negodevcom
sudo ufw allow 20/tcp
sudo ufw allow 21/tcp
sudo usermod -d /home/awardBackend ftp
sleep 2
echo ====== FTP Informations ======
echo IP Adress : Your VPS Ip Adress
echo Port : 20/21
echo Username : nego
echo Password : negodevcom
echp  ====== FTP Informations ======
sleep 9
echo Ftp Installed
sleep 2
echo Packages Installing...
sleep 2
npm i
sleep 4
echo Running..
node award.index.js

