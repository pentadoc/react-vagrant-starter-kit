#!/usr/bin/env bash

# Get root up in here
sudo su

# Just a simple way of checking if we need to install everything
if [ ! -d "/vagrant/project_folder" ]
then
    # Update and begin installing some utility tools
    apt-get -y update
    apt-get install -y python-software-properties
    apt-get install -y vim git subversion curl
    apt-get install -y memcached build-essential

    # Add nodejs repo
    add-apt-repository -y ppa:chris-lea/node.js
    apt-get -y update

    # Install nodejs
    apt-get install -y nodejs

    # Update npm    
    sudo npm install  --unsafe-perm npm -g

    # Add debugging tools    
    sudo npm install --unsafe-perm -g node-inspector  

    # Get the generator toolstack
    sudo npm install --unsafe-perm -g gulp
    sudo npm install --unsafe-perm -g yo bower grunt-cli

    git clone https://github.com/pentadoc/react-starter-kit.git react-fullstack
    
    #change owner
    chown -R vagrant react-fullstack	
fi
