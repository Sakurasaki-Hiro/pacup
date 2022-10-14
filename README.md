# pacup

Simplify package updates

Ubuntu系のディストリで、パッケージのアップデートをする際に　`sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo snap refresh && flatpak update`　と入力するのを `sudo pacup`　といった風に短縮するためのコマンドです.

　元々、「EtupOS」の開発者「ペンえぬ」さんが開発したコマンドで、　`sudo apt update && sudo apt -y upgrade`　を省略できる機能がありました。<br>　しかし、アップデート後に不要なパッケージが発生することがあるため、　`sudo apt autoremove -y`　を省略する機能を「PlasmaLinux」の開発者が追加し、「PlasmaLinux」に組み込みました。<br>　これで、「Ubuntu」系のディストリビューションをアップデートさせるのに必要なコマンド３種を省略する機能があるコマンドとなりましたが、まだ「Flatpak」と「Snap」のアプリをアップデートする機能はありませんでした。<br>　そこで、　`sudo snap refresh && flatpak update`　を省略する機能をさらに追加しました。

## インストール方法
```
sudo apt install -y git
sudo git clone https://github.com/Sakurasaki-Hiro/pacup
cd pacup
sudo bash install_pacup.sh
```
