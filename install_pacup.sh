#!/bin/bash
if [ `whoami` != 'root' ]; then
  echo "管理者権限で実行してください"
  exit
fi

sudo cp -f ./pacup.sh /usr/local/bin/pacup
sudo chmod +x /usr/local/bin/pacup
echo "Success!"

exit
Footer
