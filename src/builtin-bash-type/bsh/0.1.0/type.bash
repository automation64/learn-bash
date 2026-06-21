#!/usr/bin/env bash
# Reference: https://www.gnu.org/software/bash/manual/html_node/Bash-Builtins.html#index-type
bl64_msg_show_separator 'type'

function test_function() { :; }

bl64_msg_show_info 'check for undefined function'
[[ $(type -t undefined_test_function) == '' ]] && echo 'Undefined function'

bl64_msg_show_info 'check if the command is a function'
[[ $(type -t test_function) == 'function' ]] && echo 'Defined function'
