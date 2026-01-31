#!/bin/bash

# user defined variables
hero="rancho"
villian="virus"

echo "3 idiots ka hero hai $hero"

echo "3 idiots ka villain hai $villian"

# shell / enviroment variables bhi hote hai (pre-defined)

echo "Current logged in user $USER"

#user input 
read -p "Rancho ka poora naam kya tha? " fullname

echo "Rancho ka Poora Naam $fullname tha"

#arguments

#./3_idiots.sh raju farhan rancho

echo "movie ka name: $0"

echo "first idiot: $1"

echo "second idiot: $2"

echo "third idiot: $3"

echo "the total number of idiots: $#"

echo "hence the 3 idiots are $@"
