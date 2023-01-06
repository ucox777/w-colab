wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
echo "======================="
echo "Setting ngrok"
echo "======================="
unzip ngrok.zip > /dev/null 2>&1
./ngrok authtoken $2
clear
./ngrok tcp --region $1 3389 &>/dev/null &
