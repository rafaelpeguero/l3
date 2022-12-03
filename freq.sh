#! /bin/bash
# calcular frecuencia de palabras
  nr=10
  if [ $#  -ge  "2" ]
  then 
     nr=$1
  fi
  tr      '[A-Z]'  '[a-z]'    |
  tr -cs  '[a-z]'    '[\012*]' |
  sort                        |
  uniq -c                     |
  sort -nr                    |
  head -$nr
 
 
