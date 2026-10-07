#!/bin/bash

usage="$0 <name> <group> [<year>]\n
<name>: md file basename in content/members\n
<year>: year of change\n
<group>: new group to be set (m/d/o only)"

name=$1
if [ -z $name ]; then
    echo $usage
    exit
fi

year=$2
if [ -z $year ]; then
    echo $usage
    exit
fi

group=$3
if [ -z $group ]; then
    echo $usage
    exit
else
    case $group in
	'm')
	    group='master';;
	'd')
	    group='doctoral';;
	'o')
	    group='obog';;
	*)
	    echo Wrong group: $group
	    echo $usage; exit;;
    esac
fi

sed -i '.b' \
     -e "s/^weight:.*$/weight: \"$year\"/" \
     -e "s/^member\_group:.*$/member\_group: \"$group\"/" \
     content/members/$name.md
sed -i '.b' \
     -e "s/^weight:.*$/weight: \"$year\"/" \
     -e "s/^member\_group:.*$/member\_group: \"$group\"/" \
     content/members/$name.en.md
