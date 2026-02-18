#!/bin/bash

folders=("60-ingress-alb" "50-acm" "40-eks" "30-rds" "20-bastion" "10-sg" "00-vpc")

for folder in "${folders[@]}"
do
  echo "Destroying $folder"
  cd "$folder" || exit
  terraform init -reconfigure
  terraform destroy -auto-approve -lock=false
  cd ..
done
