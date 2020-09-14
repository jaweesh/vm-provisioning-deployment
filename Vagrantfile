
Vagrant.configure("2") do |config|
  config.vm.box = "gusztavvargadr/windows-10"
  config.vm.hostname = "Expandable1"
  #config.vm.box_download_insecure = true
  config.winrm.timeout = 600
  config.vm.boot_timeout = 600
  # Provision the machine
  config.vm.provision "shell", path: "shell/install-sysinternals.ps1"
  config.vm.provision "shell", path: "shell/MakeWindows10GreatAgain.ps1", privileged: true
  config.vm.provision "shell", path: "shell/install-bginfo.ps1", privileged: true
  config.vm.provision "shell", path: "shell/install-choco.ps1"

  #config.vm.box_check_update = false
  #config.vm.synced_folder "C:/Users/jaweesh/Downloads/", "/vagrant_data"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
  	vb.name = "win10vb"
  	vb.customize ["modifyvm", :id, "--memory", 4096]
    vb.customize ["modifyvm", :id, "--cpus", 2]
    vb.customize ["modifyvm", :id, "--vram", "32"]
    #vb.customize ["modifyvm", :id, "--nicpromisc2", "allow-all"]
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    #vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    #vb.customize ["setextradata", "global", "GUI/SuppressMessages", "all" ]
  end
end
