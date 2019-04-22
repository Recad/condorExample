#!/bin/bash
# extraer R
d=$(date +'%G/%m/%d %H:%M:%S')
h=$(hostname -f)
echo "${d} inicia extraccion 	R-3.3.0.tar.gz en ${h}"
tar xfz R-3.3.0.tar.gz
d=$(date +'%G/%m/%d %H:%M:%S')
echo "${d} finaliza extraccion r330.tgz"

# Ejecutar R con el archivo indicado
d=$(date +'%G/%m/%d %H:%M:%S')
echo "${d} inicia ejecución r con entradas $1"
export R_HOME="${PWD}/R330"
R330/bin/R -q -f $1
d=$(date +'%G/%m/%d %H:%M:%S')
echo "${d} finaliza ejecución r con entradas $1"
