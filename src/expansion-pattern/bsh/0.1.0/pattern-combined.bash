#!/usr/bin/env bash
bl64_msg_show_separator 'pattern: combined'

set -x
[[ "$STRING1" == test-stri?([a-z])g ]] && echo 'match' || echo 'not-match'
[[ "$MIX1" == test-mix-@(25|30) ]] && echo 'match' || echo 'not-match'
set +x
