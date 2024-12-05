Hora Actual Version 1

Instrucciones
Clonar repo

$ git clone https://gitlab.com/sergio.pernas1/hora-actual-dockerfile.git
$ cd hora-actual-dockerfile


Cambiar de rama

$ git checkout version-2


Crear imagen

$ docker build -t hora-actual:version-2 .


Lanzar contenedor

$ docker run -d \
-e TITULO="example.app" \
-p 7070:80 \
--name "example.app" \
hora-actual:version-2
