#!/bin/bash

<<help
Function to Create user & delete
help

function create_user{
read -p"Enter The Username: " username

read -p "Enter The Password: " password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

}

function user_delete{
sudo userdel $username
}

create_user
user_delete
