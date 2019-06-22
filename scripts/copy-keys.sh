#!/bin/sh

nodes=(pizarro micoud frings diego eilts)

for n in ${nodes[@]}
do
    printf "copy key for %s\n" $n

    ssh-copy-id -i ~/.ssh/id_rsa pi@$n
done

