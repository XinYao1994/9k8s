#!/bin/bash

while true;
do
  printf "Cleaning CNI orpha IP allocations...";

  /cni-cleanup -cni.path=$CNI_PATH;

  printf "Waiting to cleanup the next day...";

  sleep 86400;
done
