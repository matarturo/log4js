#!/bin/bash
# Script: log4.sh
# Autor: Arturo Mata <arturo.mata@gmail.com>
# Version: 1.0.0
# Repositorio: https://github.com/matarturo/
# Released under the GNU General Public License WITHOUT ANY WARRANTY.
# See LICENSE.TXT for details.

# Script para detectar vulnerabilidad log4js en servidores linux

# Requisitos

Ejecutar el script con privilegios <root>

echo "chequeando vulnerabilidad log4j...";
if [ "$locate log4j|grep -v log4js" ]; then
  echo "### potencialmente vulnerable, los siguientes archivos contienen el nombre log4js:";
  locate log4j|grep -v log4js;
fi;
if [ "(dpkg -l|grep log4j|grep -v log4js)" ]; then
 echo "### potencialmente vulnerable, paquete instalado es:";
 dpkg -l|grep log4j;
 fi;
 if [ "$(which java)" ]; then
  echo "java está instalado, así que tenga en cuenta que las aplicaciones de Java a menudo agrupan sus bibliotecas dentro de los archivos jar/war/ear, por lo que aún p$fi;
echo "Si no ve ningún resultado por encima de esta línea, está a salvo. De lo contrario, verifique los archivos y paquetes enumerados.";
exit 0
