#! /bin/bash
# Capturando una señal
  nrcic=10
 trap  'echo "capture señal 2 en ciclo `expr $nrcic - $i + 1`"; continue' 2
 for i in `seq $nrcic -1 1`
 do
    echo " Faltan $i minutos para finalizar"
    sleep 60
 done
    echo " Hemos finalizado"
