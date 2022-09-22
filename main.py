#!/usr/bin/python3

import os


def Menu():
    while (True):
        print("\n1.nmap\n2.Eternal Blue\n3.Ldap Enumeration\n4.exit\n")
        choice = int(input("Please Enter a Choice :- "));
        if (choice == 1):
            os.system("./script/nmap.sh")
        if (choice == 2):
            os.system("./script/eb.sh")
        if (choice == 3):
            os.system("./script/ldap.sh")
        if (choice == 4):
            exit()

def main():
#    print("Hello World \n programm is working")
    Menu()

if __name__ == '__main__':
    main()