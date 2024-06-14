#!/bin/bash
clear

if [[ ! -f "$HOME/.bash_profile" ]]; then
    touch "$HOME/.bash_profile"
fi

if [ -f "$HOME/.bash_profile" ]; then
    source $HOME/.bash_profile
fi

logo_nodesync(){

clear

 cat << "EOF"
=========================================================================
     _   _           _       ____
    | \ | |         | |     / ___|
    |  \| | ___   __| | ___| (__  _   _ ___    __   _____  ___  ___
    |     |/ _ \ / _  |/ __\\__ \| | | |  _ \ / _| |_   _|/ _ \|  _ \
    | |\  | (_) | (_) | /o_ ___) | |_| | | | | (_ _  | | | (_) | |_) |
    |_| \_|\___/ \____|\___|____/ \__  |_| |_|\__(_) |_|  \___/|  _ /
                                    _/ |                       | |
                                   |__/                        |_|

=========================================================================
             Developed by: NodeSync.Top
             Twitter: https://twitter.com/nodesync_top
             Telegram: https://t.me/nodesync_top
=========================================================================
EOF

}

logo_nodesync;



echo "===========Nubit Light Node Install Easy======= " && sleep 1

read -p "Do you want run Nubit Light Node ? (y/n): " choice

if [ "$choice" == "y" ]; then

if [ "$choice" == "y" ]; then
    read -p "Enter wallet address: " input_moniker
    if [ -z "$input_moniker" ]; then
    echo "Wallet cannot be empty!"
    exit 1
     fi
     MONIKER="$input_moniker"
     echo "Your address is: $MONIKER"
fi

sudo apt update && apt upgrade -y
sudo apt install curl  build-essential git wget jq make gcc tmux htop nvme-cli pkg-config libssl-dev libleveldb-dev libgmp3-dev tar clang bsdmainutils ncdu unzip llvm libudev-dev protobuf-compiler -y
cd $HOME
rm -rf nubit-node

tmux new -s nubit "curl -sL1 https://nubit.sh | bash"

echo "Install successfully. Follow X:https://x.com/nodesync_top"
fi


