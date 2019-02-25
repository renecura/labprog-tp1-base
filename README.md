## Laboratorio de Programación y Lenguajes

### Departamento de Informática - FI-UNPSJB-PM

# Trabajo Práctico Nº 1

## Instalación y configuración del entorno de desarrollo

El primer paso es instalar el entorno que utilizaremos para el desarrollo.
Este será configurado utilizando Docker para asegurar un ambiente homogéneo para toda la clase.

1. Instalar [Docker](https://www.docker.com/products/docker-desktop)
1. Abrir una terminal en el directorio de trabajo
1. Ejecutar `docker pull labprog/tp1-base`
1. Verificar que la imagen haya sido bajada con éxito ejecutando `docker run -it --rm labprog/tp1-base`

Si la instalación fue correcta debería abrirse una terminal dentro del contenedor Linux, en la ubicación home de root.
Con el comando `ls` debería listarse una sola carpeta vacia llamada `app`.

## Registrarse en el repositorio Git

Para regisrtarse en el repositorio Git deberá crear una cuenta en fipmgit.ddns.net:8102 y solicitar a la cátedra ser agregados al grupo de la materia.

## Adquirir el código base para el desarrollo

Para comenzar con el desarrollo es necesario adquirir el código base.

1. Hacer **FORK** del repositorio desde la página.

1. Crear un directorio `tp1-base`

1. Iniciar el contenedor `labprog/tp1-base` y montar el directorio para ser accesible dentro del contenedor.
```
docker run -it --rm --mount type=bind,source="$(pwd)"/tp1-base,target=/root/app labprog/tp1-base
```

1. Desde la carpeta home del contenedor, **CLONAR** el repositorio "forkeado" dentro a la carpeta `app`.
```
git clone http://fipmgit.ddns.net:8102/<USUARIO>/TP1-core.git app
```

> Recordar reemplazar \<USUARIO> con el correspondiente nombre de usuario del repositorio o copiar la url después de hacer el fork.

1. Ir al directorio `app`. 
```
cd app
```

1. Ejecutar `ant`. Se encargará de compilar el código y generar el archivo `dist/Main.jar`.

1. Para ejecutar el programa `java -jar dist/Main.jar`. Si todos los pasos fueron correctos, se verá `Hello World!` en la pantalla.