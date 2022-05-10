echo Award Backend Installer By Nego#1000
echo Credits : https://nego-dev.com
sleep 2
echo Nodejs Installing...
sudo apt-get install nodejs
sudo apt-get install npm
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
curl -o backend.zip https://github.com/HelloAward/api.awardbot.me/archive/refs/heads/main.zip
echo Infrastructure Installed !
sleep 2
echo UnZipping...
sudo apt install unzip
sleep 2
echo UnZipped
unzip backend.zip

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
sudo systemctl restart vsftpd.service
sleep 2
echo ====== FTP Informations ======
echo IP Adress : Your VPS Ip Adress
echo Port : 20/21
echo Username : nego
echo Password : negodevcom
echo  ====== FTP Informations ======
sleep 9
echo Ftp Installed
sleep 2
echo Packages Installing...
sleep 2
cd backend
npm i
sleep 4
echo Running..
node award.index.js

