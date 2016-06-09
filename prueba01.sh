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

echo "Conecta a ssh"
ssh root@7.212.100.221 -P cloudera

echo "creacion de directorio en hdfs"

#sudo -u hdfs hdfs dfs -mkdir ${PATH_HADOOP}"/prueba11111"
sudo -u hdfs hdfs dfs -ls /user