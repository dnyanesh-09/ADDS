FROM parrotsec/core:latest
RUN apt-get -y update
RUN apt-get -y install python3 curl john nmap lynx python3-ldapdomaindump
RUN mkdir -p /root/.msf4/loot/
RUN cd /tmp/
RUN curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
RUN chmod 755 msfinstall
RUN ./msfinstall
WORKDIR /ADDS
copy . /ADDS
CMD ./main.py


