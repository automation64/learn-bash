#!/usr/bin/env bash
bl64_msg_show_separator 'pattern: ?'
set -x
[[ "$STRING1" == test* ]] && echo 'match' || echo 'not-match'
[[ "$STRING1" == *test* ]] && echo 'match' || echo 'not-match'
set +x
