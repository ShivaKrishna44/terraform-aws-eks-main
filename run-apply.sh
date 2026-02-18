#!/bin/bash

folders=("00-vpc" "10-sg" "20-bastion" "30-rds" "40-eks" "50-acm" "60-ingress-alb")

for folder in "${folders[@]}"
do
  echo "Applying $folder"
  cd "$folder" || exit
  terraform init -upgrade
  terraform plan  -lock=false
  terraform apply -auto-approve  -lock=false
  cd ..
done
