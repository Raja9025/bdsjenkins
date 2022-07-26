#!/bin/bash

#deployutil=~/git/bdsjenkins/deployutil

for deploy in "$(cat microservices.txt)"
do
    #${deployutil} -m ${deploy} int
     echo $deploy
   echo "---------------------------------------------------"
done

for image in "$(cat microservices.txt)"
do
    echo "The Current Images Of Microservice ${image} are:"
    ${deployutil} -c ${image}
    echo "==================================================="
done

