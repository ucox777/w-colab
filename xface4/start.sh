echo "Download ngrok"
wget -q -O ngrok.sh https://raw.githubusercontent.com/ucox777/w-colab/main/ngrokcolab.sh
chmod +x ngrok.sh
./ngrok.sh $1 $2
echo "===================================="
echo "Wait..."
echo "===================================="
sudo apt-get update > /dev/null 2>&1
echo "Install Firefox"
echo "===================================="
sudo apt install firefox -y > /dev/null 2>&1
echo "===================================="
echo "Install xface4 xface-terminal xrdp"
echo "===================================="
sudo apt install -y xrdp > /dev/null 2>&1                                    
sudo apt install xfce4 -y > /dev/null 2>&1
sudo apt-get install xfce4 xfce4-terminal -y > /dev/null 2>&1
sudo apt-get update > /dev/null 2>&1
sudo apt-get install tmux > /dev/null 2>&1
sudo apt-get upgrade -y > /dev/null 2>&1
echo "===================================="
echo "Start RDP"
echo "===================================="
wget -q https://raw.githubusercontent.com/ucox777/w-colab/main/xface4/run.sh

sudo chmod +x run.sh
tmux new-session -d -s "rdp" ./run.sh
echo XRDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'

                                 
                                        
echo "===================================="
#echo "Don't close this tab RDP runs 12 hours"
#echo "===================================="

