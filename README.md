# pacup
***Simplify package updates***

Debian系 もしくは Debian派生系のディストリビューションで、パッケージのアップデートをする際に  
`sudo apt update && sudo apt full-upgrade && sudo apt autoremove && sudo snap refresh && flatpak update`  
と入力するのを `pacup` として**大幅に短縮する**コマンドです.

## 「pacup」のインストール方法／アップデート方法
①[インストール用シェルスクリプト](https://dl.dropboxusercontent.com/s/2lutkal30bnq3rx/pacup-installer.sh?dl=1)を[ダウンロード](https://dl.dropboxusercontent.com/s/2lutkal30bnq3rx/pacup-installer.sh?dl=1)する

②以下のコマンドを実行してインストールする
```
cd ダウンロード
sudo bash pacup-installer.sh
```

## 詳細
「**EtupOS**」の開発者である「**ペンえぬ**」さんが作ったオリジナルのアップデートコマンド「**pacup**」をもとに、「**桜咲ヒロ**」が、 ｢[**Flatpak**](https://flatpak.org)｣ と ｢[**Snap**](https://snapcraft.io)｣ のアップデート機能を追加し、「**シューゴ**」さんがコマンドの調整や一部機能の追加を行いました。
そして、「**桜咲ヒロ**」が、Linux初心者がより使いやすくなるように軽度なGUI化（Desktopファイルの追加）を行い、パスワードの入力だけで実行できるようになりました。

## コマンド制作者
- **ペンえぬ**　（テンプレートを作成）
- **桜咲ヒロ**　（プラットフォームを更新するために｢[**Snap**](https://snapcraft.io)」と「[**Flatpak**](https://flatpak.org)」を追加、機能追加・移植版の修正）
- **シューゴ**　（主に機能追加・修正）
