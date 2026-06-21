#!/usr/bin/env bash
bl64_msg_show_separator 'for'

bl64_msg_show_separator 'for exit status: after ok command'
set -x
status=100
for x in 1 2; do
  true
done
status=$?
set +x

bl64_msg_show_separator 'for exit status: after failed command'
set -x
status=100
for x in 1 2; do
  false
done
status=$?
set +x

bl64_msg_show_separator 'for exit status: after break with previous ok command'
set -x
status=100
for x in 1 2; do
  true
  break
done
status=$?
set +x

bl64_msg_show_separator 'for exit status: after break with previous failed command'
set -x
status=100
for x in 1 2; do
  false
  break
done
status=$?
set +x
