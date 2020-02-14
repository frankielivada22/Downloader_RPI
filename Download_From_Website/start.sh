#!/bin/bash
lgreen="\e[92m"
lred="\e[91m"
nc="\e[39m"


while :
do
clear
echo -e $lred""
cat << "EOF"
 /$$$$$$$                                    /$$                           /$$                    
| $$__  $$                                  | $$                          | $$                    
| $$  \ $$  /$$$$$$  /$$  /$$  /$$ /$$$$$$$ | $$  /$$$$$$   /$$$$$$   /$$$$$$$  /$$$$$$   /$$$$$$ 
| $$  | $$ /$$__  $$| $$ | $$ | $$| $$__  $$| $$ /$$__  $$ |____  $$ /$$__  $$ /$$__  $$ /$$__  $$
| $$  | $$| $$  \ $$| $$ | $$ | $$| $$  \ $$| $$| $$  \ $$  /$$$$$$$| $$  | $$| $$$$$$$$| $$  \__/
| $$  | $$| $$  | $$| $$ | $$ | $$| $$  | $$| $$| $$  | $$ /$$__  $$| $$  | $$| $$_____/| $$      
| $$$$$$$/|  $$$$$$/|  $$$$$/$$$$/| $$  | $$| $$|  $$$$$$/|  $$$$$$$|  $$$$$$$|  $$$$$$$| $$      
|_______/  \______/  \_____/\___/ |__/  |__/|__/ \______/  \_______/ \_______/ \_______/|__/      
...................................................................................................
EOF
echo -e $lgreen""
read -p "What is the DOWNLOAD link:" download

echo "Downloading..."
if [[ -e downloads ]]; then
echo "Will be saved in downloads folder..."
else
mkdir downloads
echo "Will be saved in downloads folder..."
fi

wget -P /root/Download_From_Website/downloads/ "$download"

echo ""
echo ""
echo "DONE!!!"
done
