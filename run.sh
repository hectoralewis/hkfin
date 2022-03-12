#!/bin/bash

./hkfin --login ${EM} &
  
python -m http.server ${PORT} &
  
wait -n
  
exit $?