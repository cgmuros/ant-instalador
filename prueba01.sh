#!/bin/bash

clear

# ---------------------------------------------------------------------
# Parametros: directorios
PATH_HADOOP='/user/cloudera'
PATH_LOG='/home/cloudera'


# ---------------------------------------------------------------------
# Parametros: variables
FECHA_HORA=`date +'%Y%m%d_%H%M%S'`
VS_NombreLog="JobPilotoCabeceraSinFiltro"
VS_ARCHIVO_LOG=${PATH_LOG}/${VS_NombreLog}_${FECHA_HORA}.log

echo "lista directorios"
sudo -u hdfs hdfs dfs -ls /user/cloudera

echo "valido si existe el directorio"
if sudo -u hdfs hdfs dfs -test –d /home/cloudera/prueba11111 ; then
  echo "Directory  exists"
else
  sudo -u hdfs hdfs dfs -mkdir /user/cloudera/prueba11111
  echo “Creating  directory”
fi

#echo "creacion de directorio en hdfs"
#sudo -u hdfs hdfs dfs -mkdir /user/cloudera/prueba11111

