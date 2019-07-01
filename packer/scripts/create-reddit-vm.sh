#!/bin/bash

#VARIABLES

    ID_PROJECT=*****

    INST_NAME=reddit-hw

    PORT=9292

    TAGS=puma-server

    IMAGE_FAMILY=reddit-base

    DISK_SIZE=10GB

    TYPE_MACHINE=g1-small

    DEFZONE=europe-west3-b

    STARTUP_SCRIPT=startup_script1.sh

# Create instance

/usr/bin/gcloud compute instances create $INST_NAME --boot-disk-size=$DISK_SIZE --image-family $IMAGE_FAMILY --machine-type=$TYPE_MACHINE --tags $TAGS --restart-on-failure --zone $DEFZONE --metadata-from-file startup-script=$STARTUP_SCRIPT
