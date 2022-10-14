#!/bin/bash
if [ `whoami` != 'root' ]; then
  echo "管理者権限で実行してください"
  exit
fi

sudo cp ./pacup.sh /usr/bin/pacup
sudo chmod +x /usr/bin/pacup
echo "Success!"

exit
Footer
