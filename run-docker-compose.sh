#!/bin/bash
  
declare -a docker_containers

docker_containers=(dmarc-visualizer)

cd ${USERDIR}/dmarc-visualizer

for i in "${docker_containers[@]}"; do /usr/local/bin/docker-compose -p $i -f ${USERDIR}/dmarc-visualizer/$i.yml up -d

done
