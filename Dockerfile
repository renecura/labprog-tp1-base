FROM openjdk:8-jdk-alpine

# Establece el directorio de trabajo
WORKDIR /usr/local

# Instala paquetes
RUN apk update && apk add --no-cache apache-ant bash git

## Configura variables de entorno
ENV ANT_HOME /usr/share/java/apache-ant 
ENV PATH $ANT_HOME/bin:$PATH

ENV PS1 '\e[1;34mlabprog\e[1;33m@\e[1;31m\W\e[1;33m\$ \e[m'

# Establece el home como directorio de trabajo
WORKDIR /root

# Crea el directorio app para montar el código a desarrollar
RUN mkdir app

# Comando por defecto al ejecutar el contenedor con 'run'
CMD [ "bash" ]
