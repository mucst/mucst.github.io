# -*- mode: ruby -*-
# vi: set ft=ruby :

$install_jekyll = <<-EOFSCRIPT
apt-get update

apt-get install -y ruby-full build-essential zlib1g-dev

echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

gem install jekyll bundler

EOFSCRIPT

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |vb|
      vb.memory = 8182
      vb.cpus = 4
      vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end
  
  config.vm.box = "ubuntu/focal64"
  config.vm.hostname = "jekyll"
  config.vm.provision "shell", inline: $install_jekyll
  config.vm.network "forwarded_port", guest: 4000, host: 4000
end
