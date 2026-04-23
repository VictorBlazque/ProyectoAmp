#!/bin/bash

# Actualizar
apt-get update

# Instalar Docker
apt-get install -y docker.io

# Instalar docker-compose
apt-get install -y docker-compose

# Activar docker
systemctl start docker
systemctl enable docker

# Instalar git
apt-get install -y git

# Clonar o actualizar repo
if [ ! -d "/home/vagrant/app" ]; then
  git clone https://github.com/VictorBlazque/ProyectoAmpliacion.git /home/vagrant/app
else
  cd /home/vagrant/app
  git pull
fi

# Ejecutar contenedores
cd /home/vagrant/app
docker-compose up -d