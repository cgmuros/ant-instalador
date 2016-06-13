#!/bin/bash

clear

#Elimino de manera recurtsiva todo el directorio hive, archivos y sub carpetas.
sudo -u hdfs hdfs dfs -rm -R /user/cloudera/hive

#Copiar toda la estructura de directorios en hdfs.
sudo -u hdfs hdfs dfs -put /home/cloudera/instalador/hive /user/cloudera/


