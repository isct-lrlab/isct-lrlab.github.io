#!/bin/bash

usage="$0 <name> <weight> <group>\n
<name>: LAST-NAME,FIRST-NAME in latin capital letters.\n
<weight>: Year of enrollment in two digits, e.g., 26, 27, ...\n
<group>: either 'b' (bachelor), 'm' (master), 'd' (doctoral), 'o' (obog) or 'r' (research-visiting student)
"

name=$1
if [ -z $name ]; then
    echo $usage
    exit
fi

weight=$2
if [ -z $weight ]; then
    echo $usage
    exit
fi

group=$3
if [ -z $group ]; then
    echo $usage
    exit
else
    case $group in
	'b')
	    group='bachelor';;
	'm')
	    group='master';;
	'd')
	    group='doctoral';;
	'r')
	    group='research-visiting';;
	'o')
	    group='obog';;
	*)
	    echo Wrong group: $group
	    echo $usage; exit;;
    esac
fi

template="---#\
title: \"NAME\"#\
weight: WEIGHT#\
member_group: \"GROUP\"#\
description: \"\"#\
draft: 1#\
---
"

template=`echo $template | sed s/NAME/$name/`
template=`echo $template | sed s/WEIGHT/$weight/`
template=`echo $template | sed s/GROUP/$group/`
echo $template | tr "#" "\n" > content/members/$name.md
cp content/members/$name.md content/members/$name.en.md
