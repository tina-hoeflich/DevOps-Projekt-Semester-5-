# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.network "forwarded_port", guest: 5000, host: 5000
  config.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y python3-pip
      python3 -m pip install -r /vagrant/requirements.txt
      export FLASK_APP=/vagrant/app.py
      python3 -m flask run --host=0.0.0.0
      SHELL
end
