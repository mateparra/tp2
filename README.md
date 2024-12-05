Hora Actual - Versión 1
Una aplicación simple y eficiente para mostrar la hora actual utilizando Docker. 

Instrucciones de Uso
Sigue los pasos a continuación para clonar el repositorio, construir la imagen Docker y lanzar el contenedor:

1 Clonar el repositorio
Clona este repositorio en tu máquina local utilizando el siguiente comando:

git clone https://gitlab.com/sergio.pernas1/hora-actual-dockerfile.git
cd hora-actual-dockerfile


2 Cambiar de rama
Cambia a la rama version-2 para utilizar la última versión:

git checkout version-2


3 Crear la imagen Docker
Construye la imagen Docker con el tag hora-actual:version-2:

docker build -t hora-actual:version-2 .


4 Lanzar el contenedor
Ejecuta el contenedor con las siguientes configuraciones:

Define el título de la aplicación mediante la variable de entorno TITULO.
Expón el puerto 80 en el contenedor al puerto 7070 en tu máquina.
Asigna un nombre al contenedor.

docker run -d \
-e TITULO="example.app" \
-p 7070:80 \
--name "example.app" \
hora-actual:version-2


 Notas Adicionales
Asegúrate de tener Docker instalado en tu sistema antes de iniciar.
Puedes personalizar la variable TITULO y el puerto según tus necesidades.
