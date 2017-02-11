sudo apt-get purge `dpkg --get-selections | grep ":i386" | awk '{print $1}'`
