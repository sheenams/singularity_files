#!/bin/bash

SING_FILE=$1
FNAME=$(basename $SING_FILE)
PRGM=${FNAME#*-}
echo $PRGM

if [ -f ${PRGM}.img ];
    then mv ${PRGM}.img ${PRGM}.img-org
fi
#Create image
singularity create ${PRGM}.img

#Bootstrap image
sudo singularity bootstrap ${PRGM}.img $SING_FILE
