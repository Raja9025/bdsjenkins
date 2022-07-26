#!/bin/bash
set -x
deployutil=deployfile/deployutil
services=( 'aws-collector' 'dtcs-mysql' 'dtcscol-mysql' 'dtcs-pgsql' 'dtcscol-pgsql' 'dtcs-mssql' 'dtcscol-mssql' 'encs' 'gcp-collector' 'ims' 'lmos-aws' 'lmos-gcp' 'lmos-oci' 'oci-collector' 'recs-aws' 'recs-gcp' 'recs-oci' 'scos' )

for deploy in "${services[@]}"
do
    #${deployutil} -m ${deploy} int
     echo ${deploy}
done

for image in "${services[@]}"
do
    echo "The Current Images Of Microservice ${image}"
    ${deployutil} -c ${image}
done

