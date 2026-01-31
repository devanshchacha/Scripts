#!/bin/bash

<<help

this is a shell scripting
to create user

help

echo "[============= Create of User Started ==============]"

echo "Username: $0"

echo "password: $1"

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "[============== Create of User Complete ============]"

