#!/usr/bin/env bash
# Reference: https://www.gnu.org/software/bash/manual/html_node/Bourne-Shell-Builtins.html#index-eval
bl64_msg_show_separator 'eval'

bl64_msg_show_info 'indirect variable reference in eval expression'

set -x
source_variable='source variable content'
indirect_variable='source_variable'
eval "[[ \"\$${indirect_variable}\" == \"$source_variable\" ]]"
set +x
