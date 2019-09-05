sudo apt-get install iw gawk curl git wireless-tools ettercap-graphical hostapd isc-dhcp-server iptables sslstrip lighttpd dsniff reaver xterm expect john autoconf automake libpcre3-dev libnl-3-dev libsqlite3-dev libssl-dev ethtool build-essential g++ libnl-genl-3-dev libgcrypt20-dev libtool python3-distutils crunch libssl-dev build-essential libpcap-dev libssl-dev build-essential openssl zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev autoconf libc6-dev libncurses5-dev automake libtool bison subversion ruby git nodejs ruby-dev p7zip-full build-essential ruby-dev libpcap-dev net-tools libssl-dev libnl-genl-3-dev libnl-3-dev pkg-config libsqlite3-dev 

mkdir bin && 
cd bin  

sudo apt remove aircrack-ng && 
sudo apt install -y pkg-config && git clone https://github.com/aircrack-ng/aircrack-ng.git && 
cd aircrack-ng && 
autoreconf -i && 
./configure --with-experimental --with-ext-scripts && 
make && sudo make install && 
sudo airodump-ng-oui-update && 
cd ..  

git clone https://github.com/aircrack-ng/mdk4 && 
cd mdk4 &&
make && 
sudo make install &&
cd ..  

git clone https://github.com/wiire/pixiewps.git && 
cd pixiewps*/ && 
make && 
sudo make install && 
cd ..  

git clone https://github.com/aanarchyy/bully.git && 
cd bully/src/ && 
make && 
sudo make install

cd /tmp/ && wget http://hashcat.net/`curl -s https://hashcat.net/hashcat/ | grep -E -o '/files/hashcat-[0-9]{1,2}[.][0-9]{1,2}[.][0-9]{1,2}[.]7z' | head -n 1` && 7z x hashcat-*7z && sudo mkdir /opt/hashcat && sudo mv hashcat-*/* /opt/hashcat && sudo touch /bin/hashcat && echo -e '#!/bin/bash\n/opt/hashcat/hashcat64.bin "$@"' > ./hashcat && sudo mv ./hashcat /bin/hashcat && sudo chmod +x /bin/hashcat && cd ~/bin  

cd ~/bin

sudo apt-get install ruby && 
sudo gem install bettercap && 
sudo gem update --system  && 
sudo gem install bundler rake rubocop 


git clone git://github.com/beefproject/beef.git && 
cd beef && 
cd .. && 
sudo mv beef/ /opt/ && 
echo -e '#!/bin/bash\ncd /opt/beef/\n/opt/beef/beef "$@"' > ./beef && 
sudo mv ./beef /bin/beef && 
sudo chmod +x /bin/beef 

wget http://www.willhackforsushi.com/code/asleap/2.2/asleap-2.2.tgz && 
tar xvzf asleap-2.2.tgz && 
rm asleap-2.2.tgz && 
cd asleap-2.2/ && 
make && 
sudo mv ./asleap /usr/local/bin/ && 
sudo mv ./genkeys /usr/local/bin/ && cd ..  

wget https://raw.githubusercontent.com/aircrack-ng/aircrack-ng/master/patches/wpe/hostapd-wpe/hostapd-wpe.patch && 
wget http://sources.buildroot.net/hostapd/hostapd-2.7.tar.gz && 
tar -zxf hostapd-2.7.tar.gz && 
cd hostapd-2.7 && 
patch -p1 < ../hostapd-wpe.patch

cd hostapd && 
make && 
sudo make install && 
sudo make wpe 

cd /etc/hostapd-wpe/certs && 
sudo ./bootstrap && 
sudo make install 

cd ~/ && 
git clone https://github.com/v1s1t0r1sh3r3/airgeddon.git && 
cd airgeddon/ && 
sudo ./airgeddon.sh





