#!/bin/bash

clear

# ---------------------------------------------------------------------
# Parametros: directorios
PATH_HADOOP='/user/cloudera'
PATH_LOG='/home/cloudera'

$dirpath="/user/cloudera/prueba11111"

# ---------------------------------------------------------------------
# Parametros: variables
FECHA_HORA=`date +'%Y%m%d_%H%M%S'`
VS_NombreLog="JobPilotoCabeceraSinFiltro"
VS_ARCHIVO_LOG=${PATH_LOG}/${VS_NombreLog}_${FECHA_HORA}.log

echo "lista directorios"
sudo -u hdfs hdfs dfs -ls /user

echo "valido si existe el directorio"
sudo -u hdfs hdfs dfs -test -d $dirpath
if [ $? != 0 ]
  then
    sudo -u hdfs hdfs dfs -mkdir $dirpath
    echo "directorio creado"
  else
    echo "Directory already present in HDFS"
fi

#echo "creacion de directorio en hdfs"
#sudo -u hdfs hdfs dfs -mkdir /user/cloudera/prueba11111

