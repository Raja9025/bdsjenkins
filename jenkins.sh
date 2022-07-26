#!/bin/bash
set -x
deployutil=deployfile/deployutil

for deploy in "$(cat microservices.txt)"
do
    #${deployutil} -m ${deploy} int
     echo $deploy
done

for image in "$(cat microservices.txt)"
do
    echo "The Current Images Of Microservice ${image}"
    ${deployutil} -c ${image}
done

