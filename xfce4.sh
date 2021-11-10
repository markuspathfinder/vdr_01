echo "Download ngrok"
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip1 > /dev/null 2>&1
read -p "tap token : " CRP
./ngrok authtoken $CRP
nohup ./ngrok tcp 3389 &>/dev/null &
echo vida_vdr
echo "===================================="
echo "Wait ..."
echo "===================================="
sudo apt-get update > /dev/null 2>&1
echo "===================================="
echo "Down firefox "
echo "===================================="
sudo apt install firefox -y > /dev/null 2>&1
sudo apt install chrome -y > /dev/null 2>&1
echo "===================================="
echo "Install VDP"
echo "===================================="
sudo apt install -y xrdp > /dev/null 2>&1
sudo apt install xfce4 -y > /dev/null 2>&1
sudo apt-get install xfce4 xfce4-terminal -y > /dev/null 2>&1
echo "===================================="
echo "Start VDP"
echo "===================================="
sudo sed -i.bak '/fi/a xfce4-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
sudo service xrdp start > /dev/null 2>&1
echo XRDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "vida_vdr"
echo "===================================="
sleep 43210
