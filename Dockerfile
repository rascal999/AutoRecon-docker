FROM booyaabes/kali-linux-full

WORKDIR /root

# pip yo
RUN apt-get update
RUN apt-get -y install python3
RUN apt-get -y install python3-setuptools
RUN apt-get -y install python3-pip

# AutoRecon
RUN apt-get -y install seclists curl dnsrecon enum4linux feroxbuster gobuster impacket-scripts nbtscan nikto nmap onesixtyone oscanner redis-tools smbclient smbmap snmp sslscan sipvicious tnscmd10g whatweb wkhtmltopdf
RUN python3 -m pip install git+https://github.com/Tib3rius/AutoRecon.git

ENTRYPOINT [ "autorecon" ]
