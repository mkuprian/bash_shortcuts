#!/bin/bash

function goto_location() {
    LOC=$1
    loc_found=0
	
    loc_array=( $(awk -F ';' '/;/ {print $1}' $CUR_LOC/locations.txt) )
    path_array=( $(awk -F ';' '/;/{print $2}' $CUR_LOC/locations.txt) )
    for (( i = 0; i < ${#loc_array[@]}; i++ )); do
        if [[ ${loc_array[$i]} == $LOC ]]; then 
            cd ${path_array[$i]}
            loc_found=1
            break
        fi
    done
    if [[ $loc_found == 0 ]]; then
        echo "Location not found"
    fi
}
function echo_current_loc() {
	LOC=$(pwd)
	echo "Current location is $LOC"

}
function add_dir() {
    echo "Please enter the path to the directory"
    read LOC
    echo "Please enter a name for the shortcut"
    read NAME
    echo "$NAME;$LOC" >> $CUR_LOC/locations.txt
}

function add_current_dir() {
    LOC=$(pwd)
    echo "Adding current directory: $LOC"
    echo "Please enter a name for the shortcut"
    read NAME
    echo "$NAME;$LOC" >> $CUR_LOC/locations.txt
}
