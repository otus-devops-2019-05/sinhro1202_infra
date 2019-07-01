#!/bin/bash

#VARIABLES

    ID_PROJECT=infra-245107

    INST_NAME=reddit-hw

    PORT=9292

    TAGS=puma-server

    IMAGE_PROJECT=ubuntu-os-cloud

    IMAGE_FAMILY=ubuntu-1604-lts

    DISK_SIZE=10GB

    TYPE_MACHINE=g1-small

    DEFZONE=europe-west3-b

    STARTUP_SCRIPT=startup_script1.sh

# Create instance

/usr/bin/gcloud compute instances create $INST_NAME --boot-disk-size=$DISK_SIZE --image-family $IMAGE_FAMILY --image-project $IMAGE_PROJECT --machine-type=$TYPE_MACHINE --tags $TAGS --restart-on-failure --zone $DEFZONE --metadata-from-file startup-script=$STARTUP_SCRIPT

#Add firewall rule

#gcloud compute --project=infra-245107 firewall-rules create default-puma-server --direction=INGRESS --priority=1000 --network=default --action=ALLOW --rules=tcp:9292 --source-ranges=0.0.0.0/0 --target-tags=puma-server
