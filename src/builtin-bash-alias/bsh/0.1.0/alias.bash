#!/usr/bin/env bash
# Reference: https://www.gnu.org/software/bash/manual/html_node/Bash-Builtins.html#index-alias
bl64_msg_show_separator 'alias'

bl64_msg_show_info 'show current aliases'
set -x
alias
set +x

bl64_msg_show_info 'create new alias'
set -x
alias TEST_ALIAS='echo "echo from alias"'
set +x

bl64_msg_show_info 'run alias when alias expansion is disabled (expected to fail)'
shopt -u expand_aliases
TEST_ALIAS

bl64_msg_show_info 'run alias when alias expansion is enabled'
shopt -s expand_aliases
TEST_ALIAS

bl64_msg_show_info 'remove new alias'
set -x
unalias TEST_ALIAS
set +x
