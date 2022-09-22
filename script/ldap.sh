#!/bin/bash

echo "Enter the server IP here:- "
read IP

echo "Enter the domain here:- "
read domain

echo "Enter the username here:- "
read uname

echo "Enter the Password here:- "
read password

python3 ./tools/ldapdomaindump/ldapdomaindump.py --user $domain\\$uname -p $password ldap://$IP  --no-json --no-grep -o data



while true; do
#do
	echo -e "\n\n1.computer-by-os\n2.computers\n3.domain-groups\n4.domain-policy\n5.domain-trusts\n6.domain-users\nPress 'exit' to EXIT"
	echo "Enter the choice to see result:- "

	read choice
	case $choice in
		"exit")
			break ;;
		"1" )
			lynx -dump tools/ldapdomaindump/data/domain_computers_by_os.html ;;
		"2" )
			lynx -dump tools/ldapdomaindump/data/domain_computers.html ;;
		"3" )
			lynx -dump tools/ldapdomaindump/data/domain_groups.html ;;
		"4" )
			lynx -dump tools/ldapdomaindump/data/domain_policy.html ;;
		"5" )
			lynx -dump tools/ldapdomaindump/data/domain_trusts.html ;;
		"6" )
			lynx -dump tools/ldapdomaindump/data/domain_users.html ;;
		*)
			echo -e "\nUnknown response, Enter choice Between 1-6 or press exit\n  " ;;

	esac
done




#python3 tools/ldapdomaindump/ldapdomaindump.py --user iacsd\\alex -p Admin@123 ldap://172.16.0.105 --no-html --no-json --no-grep -o data

