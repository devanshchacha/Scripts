#!/bin/bash

<<help

this is a shell scripting
to create user

help

echo "[============= Create of User Started ==============]"

read -p"Enter The Username: " username

echo "password length 8 Digits"

read -p "Enter The Password: " password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username" 

echo "[============== Create of User Complete ============]"
