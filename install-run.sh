#!/usr/bin/env bash

	cd /home/vagrant/react-fullstack
	npm install --unsafe-perm
    # Symlink our source to the host's dir
    #ln -s ~/react-fullstack/ /vagrant/project   

	mv /home/vagrant/react-fullstack/ /vagrant/react-fullstack/
   
	# Victory!
	echo "You're almost done! Your default node server should now be set up to run on the host machine at localhost:3000."
	cd /vagrant/react-fullstack
    gulp
