sudo sh -c 'echo "deb http://qgis.org/debian xenial main" >> /etc/apt/sources.list'  

sudo sh -c 'echo "deb-src http://qgis.org/debian xenial main " >> /etc/apt/sources.list'  

wget -O - http://qgis.org/downloads/qgis-2016.gpg.key | gpg --import

gpg --fingerprint 073D307A618E5811

gpg --export --armor 073D307A618E5811 | sudo apt-key add -

sudo apt-get update && sudo apt-get install qgis python-qgis 