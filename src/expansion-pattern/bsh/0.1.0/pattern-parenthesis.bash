#!/usr/bin/env bash
bl64_msg_show_separator 'pattern: ?()'

bl64_msg_show_info 'simple pattern'
set -x
[[ "$STRING1" == test-stri?(n)g ]] && echo 'match' || echo 'not-match'
[[ "$STRING1" == test-stri?(x)g ]] && echo 'match' || echo 'not-match'
set +x

bl64_msg_show_separator 'pattern: *()'

bl64_msg_show_info 'simple pattern'
set -x
[[ "$STRING1" == test-stri*(n)g ]] && echo 'match' || echo 'not-match'
[[ "$STRING1" == test-stri*(x)g ]] && echo 'match' || echo 'not-match'
set +x

bl64_msg_show_separator 'pattern: +()'

bl64_msg_show_info 'simple pattern'
set -x
[[ "$STRING1" == test-stri+(n)g ]] && echo 'match' || echo 'not-match'
[[ "$STRING1" == test-stri+(x)g ]] && echo 'match' || echo 'not-match'
set +x

bl64_msg_show_separator 'pattern: @()'

bl64_msg_show_info 'simple pattern'
set -x
[[ "$STRING1" == test-stri@(n)g ]] && echo 'match' || echo 'not-match'
[[ "$STRING1" == test-stri@(x)g ]] && echo 'match' || echo 'not-match'
set +x

bl64_msg_show_separator 'pattern: !()'

bl64_msg_show_info 'simple pattern'
set -x
[[ "$STRING1" == test-stri!(n)g ]] && echo 'match' || echo 'not-match'
[[ "$STRING1" == test-stri!(x)g ]] && echo 'match' || echo 'not-match'
set +x
