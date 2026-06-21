#!/usr/bin/env bash
bl64_msg_show_separator 'function: declaration order'

bl64_msg_show_info 'before call'

function before() {
  echo 'declared before call'
}
before

bl64_msg_show_info 'after call (expected to fail)'

after
function after() {
  echo 'declared after call'
}
