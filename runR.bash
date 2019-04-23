#!/bin/bash
# extraer R
d=$(date +'%G/%m/%d %H:%M:%S')
h=$(hostname -f)
echo "${d} inicia extraccion r330.tgz en ${h}"
tar xfz R-power.tar.gz
d=$(date +'%G/%m/%d %H:%M:%S')
echo "${d} finaliza extraccion r330.tgz"
$(cp $1 R-power/$1 )
$(cp nums.csv R-power/nums.csv )
# Ejecutar R con el archivo indicado
d=$(date +'%G/%m/%d %H:%M:%S')
echo "${d} inicia ejecuci  n r con entradas $1"
cd R-power/

export LD_LIBRARY_PATH=`pwd`/lib
export R_HOME=`pwd`
export R_LIBS=`pwd`/site-library
echo $(pwd | ls)
./R -q --file=$1
d=$(date +'%G/%m/%d %H:%M:%S')
echo "${d} finaliza ejecuci  n r con entradas $1"
