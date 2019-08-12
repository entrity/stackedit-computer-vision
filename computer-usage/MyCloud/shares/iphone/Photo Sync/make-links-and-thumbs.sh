#!/bin/bash

VERBOSE=0

# Output dirs
BASEDIR=/mnt/HD/HD_a2/mar
LINKDIR=$BASEDIR/Photos
THMBDIR=$BASEDIR/Photos/Thumbnails,\ iPhone\ Sync

# Input dir
SRCDIR=*APPLE

# Last DT
PREV=

find $SRCDIR -type f | \
while read -r F; do

        is_conjectural_dt=0

        if [[ $F =~ .MOV$ ]]; then
                DT=${PREV%% *}-conjectural
                is_conjectural_dt=1
        else
                DT=$(exif "$F" --tag='Date and Time' -m)
        fi
        if [[ -z $DT ]]; then
                >&2 echo "(err) $F"
                DT=${PREV%% *}-conjectural
                is_conjectural_dt=1
        fi

        YR=${DT%%:*}
        newname="$DT $(basename "$F")"
        yrdir="$LINKDIR/all_${YR}"   
        dstdir="$LINKDIR/$YR iPhone Sync, Markham"
        thmdir="$THMBDIR/$YR iPhone Sync, Markham"
        thmdir="$THMBDIR"
        mkdir -p "$yrdir"                               
        mkdir -p "$dstdir"                              
        mkdir -p "$thmdir"                              
        newname="$(sed -e 's/:/-/g' <<< "$newname")"    
        if ! [[ -e "$dstdir/$newname" ]]; then          
                ln "$F" "$dstdir/$newname"              
        elif (($VERBOSE)); then                         
                >&2 echo "Exists $dstdir/$newname"      
        fi                                              
        if ! [[ -e "$yrdir/$newname" ]]; then           
                ln "$F" "$yrdir/$newname"               
        elif (($VERBOSE)); then                         
                >&2 echo "Exists $dstdir/$newname"  
        fi                                          
        if ! [[ -e "$thmdir/$newname" ]]; then      
                >/dev/null exif "$F" --extract-thumbnail --output="$thmdir/$newname"
        elif (($VERBOSE)); then                                                     
                >&2 echo "Exists $dstdir/$newname"                                  
        fi                                                                          
                                                                                    
        if ! (($is_conjectural_dt)); then                                           
                PREV="$DT"                                                          
        fi                                                                          
                                                                                    
done 
