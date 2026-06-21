#!/usr/bin/env bash
bl64_msg_show_separator 'array'

declare values='a b c'
declare -a var1
declare -a var2

bl64_msg_show_info 'assign array using array syntax'
set -x
var1=(a b c)
set +x
echo "key1: ${var1[0]} key3: ${var1[2]}"

bl64_msg_show_info 'assign array using array syntax with content in unquoted variable'
set -x
var1=(${values})
set +x
echo "key1: ${var1[0]} key3: ${var1[2]}"

bl64_msg_show_info 'assign array using array syntax with content in quoted variable'
set -x
var1=("${values}")
set +x
echo "key1: ${var1[0]} key3: ${var1[2]:-NOT_SET}"

bl64_msg_show_info 'assign array using read command'
set -x
IFS=" " read -r -a var2 <<<"$values"
set +x
echo "key1: ${var2[0]} key3: ${var2[2]}"
