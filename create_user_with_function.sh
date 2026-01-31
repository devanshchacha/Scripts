#!/bin/bash

<<help
Function to Create user & delete
help

echo "Create User"

read -p"Enter The Username: " username

read -p "Enter The Password: " password

#Function to User Create 

function create_user {

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "Create User Successfully"

}

#Function to Delete User

function user_delete {

sudo userdel $username
echo "Delete User Successfully"

}

#Function To Reset Passwd user

function reset_password {

echo "Password Change"

sudo passwd "$username"

echo "Change Password Successfully"
}

#function to user list

function user_list {

echo "User List"

awk -F: '{printf "%-15s : %s\n", $1, $3}' /etc/passwd

}

create_user
#user_delete
reset_password
user_list
