#!/bin/bash
echo "Check is all sources are exists ...";
 if [ ! -f /tmp/s.tgz ]; then
    echo 'Downloading and setup all required sources...'
     cd /tmp && cp /vagrant/.s.tgz /tmp/s.tgz && sudo -u vagrant tar -xzvf s.tgz && sudo rm -rf /var/www/single-page && mkdir -p /var/www && mv /tmp/sources /var/www/single-page && cd /var/www/single-page && rm -rf `find . -name "._*"` && rm -rf * && git checkout HEAD . && git reset --hard;
    echo 'Finished download and setup of sources...'
 fi

echo "Your ip address 192.168.1.101";
