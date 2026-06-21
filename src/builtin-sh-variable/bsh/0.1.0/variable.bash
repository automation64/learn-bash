#!/usr/bin/env bash
# Reference: https://www.gnu.org/software/bash/manual/html_node/Bourne-Shell-Variables.html
bl64_msg_show_separator 'variables'
echo "CDPATH=${CDPATH:-NOT_SET}"
echo "HOME=${HOME:-NOT_SET}"
echo "IFS=${IFS:-NOT_SET}"
echo "MAIL=${MAIL:-NOT_SET}"
echo "MAILPATH=${MAILPATH:-NOT_SET}"
echo "OPTARG=${OPTARG:-NOT_SET}"
echo "OPTIND=${OPTIND:-NOT_SET}"
echo "PATH=${PATH:-NOT_SET}"
echo "PS1=${PS1:-NOT_SET}"
echo "PS2=${PS2:-NOT_SET}"
