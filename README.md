# Nubit

## Light Node
#### 1. Run this script
```
sudo apt install curl -y && source <(curl -s https://raw.githubusercontent.com/nodesynctop/Nubit/main/light-node.sh)
```
#### 2. Detach from Tmux using
`ctrl + b , d`
#### 3. Backup your seed
```
cat $HOME/nubit-node/mnemonic.txt
```
#### 4. Re-attach your session
```
tmux a -t nubit
```

