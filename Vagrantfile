Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox"
  config.vm.box              = "ubuntu/trusty64"
  config.vm.network :private_network, ip: "192.168.33.10"
  config.vm.provider :virtualbox do |vb|
    vb.gui    = true
    vb.memory = 512
  end
  config.vm.synced_folder ".", "/home/vagrant/.dotfiles"
end
