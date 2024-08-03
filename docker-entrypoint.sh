#!/bin/bash
cd app

GREEN=$(printf '\033[0:32m')
NC=$(printf '\033[0m')
(
  
  while inotifywait -r -e create,modify,delete ./src/main/java; 
  do
    ./gradlew build -x test -x check 2>&1 | sed "s/^/${GREEN}/" | sed "s/$/${NC}/"
  done 
) &

./gradlew bootRun
