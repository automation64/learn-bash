#!/usr/bin/env bash
bl64_msg_show_separator 'pattern: range'
set -x
[[ 'a' == [a-z] ]] && echo 'match' || echo 'not-match'
[[ '3' == [0-9] ]] && echo 'match' || echo 'not-match'
set +x
