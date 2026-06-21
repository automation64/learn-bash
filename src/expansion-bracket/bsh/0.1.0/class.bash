#!/usr/bin/env bash
bl64_msg_show_separator 'pattern: character class'
set -x
[[ 'c' == [[:alnum:]] ]] && echo 'match' || echo 'not-match'
[[ 'b' == [[:alpha:]] ]] && echo 'match' || echo 'not-match'
[[ 'a' == [[:ascii:]] ]] && echo 'match' || echo 'not-match'
[[ ' ' == [[:blank:]] ]] && echo 'match' || echo 'not-match'
[[ $'\r' == [[:cntrl:]] ]] && echo 'match' || echo 'not-match'
[[ '1' == [[:digit:]] ]] && echo 'match' || echo 'not-match'
[[ 'w' == [[:graph:]] ]] && echo 'match' || echo 'not-match'
[[ 'a' == [[:lower:]] ]] && echo 'match' || echo 'not-match'
[[ 'a' == [[:print:]] ]] && echo 'match' || echo 'not-match'
[[ '.' == [[:punct:]] ]] && echo 'match' || echo 'not-match'
[[ ' ' == [[:space:]] ]] && echo 'match' || echo 'not-match'
[[ 'B' == [[:upper:]] ]] && echo 'match' || echo 'not-match'
[[ 'word' == [[:word:]] ]] && echo 'match' || echo 'not-match'
[[ 'H' == [[:xdigit:]] ]] && echo 'match' || echo 'not-match'
set +x
