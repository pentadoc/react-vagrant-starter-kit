Vagrant.configure("2") do |config|
    config.vm.box = "precise64"
    config.vm.box_url = "http://files.vagrantup.com/precise64.box"
    config.vm.provision :shell, :path => "node-bootstrap.sh"
    config.vm.provision :shell, :path => "install-run.sh", privileged: false
    config.vm.network :private_network, ip: '10.0.33.34'
    config.vm.provider :virtualbox do |vb|
    config.vm.network "forwarded_port", guest: 3000, host: 3000
    config.vm.network "forwarded_port", guest: 3001, host: 3001
        vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
        vb.customize ["modifyvm", :id, "--memory", "2048"]
    end
end
