#!/bin/bash

if [ ! -f /etc/debian_version ];then
  echo -e "このディストリビューションには､ \"pacup\" をインストール出来ません｡\n\nDebian系 もしくは Debian派生系のみ対応しています｡"
  exit 1
fi

if [ `whoami` != 'root' ]; then
  sudo $BASH_SOURCE
  if [ $? != 0 ]; then
    echo "Root(管理者)権限で実行してください"
    exit 1
  fi
  exit 0
fi

if [ ! -f ./pacup ]; then
  echo -e "\"pacup\" ファイルが見つかりませんでした\n"
  exit 1
fi

command -v snap >/dev/null 2>&1
if [ $? == 0 ] && [ ! -f /usr/bin/wslfetch ]; then
   sed -i -e "/^  : #SYS$/a \ \ sudo snap refresh" ./pacup
fi
command -v flatpak >/dev/null 2>&1
if [ $? == 0 ]; then
   sed -i -e "/^  : #FPK$/a \ \ flatpak update" ./pacup
fi

cp -f ./pacup /usr/local/bin/pacup
chmod +rx /usr/local/bin/pacup

if [ ! -d /usr/local/share/applications ]; then
    mkdir -p /usr/local/share/applications
fi

cp -f ./pacup.desktop /usr/local/share/applications

if [ -d ../デスクトップ ]; then
    cp -f ./pacup_Manual.txt ../デスクトップ
elif [ -d ../Desktop ]; then
    cp -f ./pacup_Manual.txt ../Desktop
else
    echo "マニュアルファイルのコピーをスキップしました"
    exit 1
fi

echo "Success!"
exit 0
