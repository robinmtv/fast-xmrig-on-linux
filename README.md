# Using the installation scripts
To use the installation scripts, simply run this command as root. The script will ask you whether you would like to install just the panel, just Wings or both.

bash <(curl -s https://raw.githubusercontent.com/robinmtv/fast-xmrig-on-linux/main/installxmrig.sh)
Note: On some systems, it's required to be already logged in as root before executing the one-line command (where sudo is in front of the command does not work).


# After use script

Use this command to open a new terminal window that will remain open after ssh logout: screen
Press enter

Run this command to start mining : 
./xmrig -o URL_POOL:PORT_POOL -a rx -k -u COIN:YOUR_ADDRESS.WORKER_NAME -p x

For exmaple :
./xmrig -a rx -o stratum+ssl://rx.unmineable.com:443 -u XMR:48VhJUE3Sv9brr8LwZPx3SMzvMbxcht5Ff4pCPskM6eFbWW8M6swxwN1rBrQ5ZmE2ZdM2Hz2woXV4erNq1fVqPqQHC8AnD9.unmineable_worker_lltoogwk -p x 
