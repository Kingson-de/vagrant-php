# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "debian7.3-x64"
  config.vm.box_url = "https://www.dropbox.com/s/lo77w3t0jh6t75v/debian7.3-x64-vbox43-puppet.box?dl=1"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.synced_folder "~/Dev/Source", "/var/www", type: "nfs"

  config.vm.provider "virtualbox" do |v|
    v.name = "debian7-php"
    v.memory = 2048
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "site.pp"
  end

end
