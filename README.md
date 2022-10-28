# pacup
***Simplify package updates***

Debian系 もしくは Debian派生系のディストリビューションで、パッケージのアップデートをする際に  
`sudo apt update && sudo apt full-upgrade && sudo apt autoremove && sudo snap refresh && flatpak update`  
と入力するのを `pacup` として**大幅に短縮する**コマンドです.

## インストール方法
```
sudo apt install -y git
sudo git clone https://github.com/Sakurasaki-Hiro/pacup
cd pacup
sudo bash install_pacup.sh
```

## 詳細
元は [**EtupOS**](https://etupos.penginn.com/)の開発者である [**ペンえぬ**](https://twitter.com/NNpen128)さんが作ったコマンドです｡  
そこに､ ｢[**Flatpak**](https://flatpak.org/)｣ と ｢[**Snap**](https://snapcraft.io/)｣ を追加したのが､ この ***pacup*** です｡
