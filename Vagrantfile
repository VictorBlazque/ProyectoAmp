Vagrant.configure("2") do |config|
  # Configurar el box 
  config.vm.box = "ubuntu/jammy64"

  # Configurar IP privada 
  config.vm.network "forwarded_port", guest: 8282, host: 8282
  config.vm.network "forwarded_port", guest: 3306, host: 3307

  # Sincronizar carpeta actual con /var/www/html en la VM
  config.vm.synced_folder ".", "/var/www/html"

  # Configuración del proveedor 
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
    vb.cpus = 1
  end

  # Aprovisionamiento
  config.vm.provision "shell", path: "provision.sh"
    
end
