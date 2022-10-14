# pacup

Simplify package updates

Ubuntu系のディストリで、パッケージのアップデートをする際に　`sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo snap refresh && flatpak update`　と入力するのを `sudo pacup`　といった風に短縮するためのコマンドです.

## インストール方法
```
sudo apt install -y git
sudo git clone https://github.com/Sakurasaki-Hiro/pacup
cd pacup
sudo bash install_pacup.sh
```
