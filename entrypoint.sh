#!/bin/bash

# instalar apache2 y git si no esta instalado
which apache2ctl || { apt update; apt install apache2 curl git -y; rm -v /var/www/html/*; }


# desplegar aplicacion
# si el directorio '/app' existe (&&) se entra y se hace un pull
# si el directorio '/app' NO existe (||) se clona el repositorio


#echo "verificar si existe repositorio y clonar de ser necesario"

#test -d /app/.git || { git clone https://gitlab.com/sergio.pernas1/hora-actual-dockerfile.git /app; cd -v /app; git checkout version-1; ln -v -s /app/index.html /var/www/html; }



test -d /app/.git && { cd /app ; git pull; } || { git clone https://gitlab.com/sergio.pernas1/hora-actual-dockerfile.git /app; cd /app; git checkout version-2; ln -v -s /app/index.html /var/www/html; }

replace=${TITULO:-"Hora Del Mundo"}

sed -i "s/<titulo>/<h1>${replace}<\/h1>/" /app/index.html 


#echo "Hacer pull si existe"

#test -d /app/.git && { cd /app ; git pull; }

# ejecutar instruccion CMD
# cuando un entrypoint lo que se declara como CMD del Dockerfile
# pasa como argumento de este script.
exec "$@"
