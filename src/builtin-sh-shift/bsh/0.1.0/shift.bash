#!/usr/bin/env bash
# Reference: https://www.gnu.org/software/bash/manual/html_node/Bourne-Shell-Builtins.html#index-shift

function shift1() {
  bl64_msg_show_info 'test shift1'
  echo "Current args: $*"
  echo "Current number or args: $#"
  shift
  echo "Current args: $*"
  echo "Current number or args: $#"
}

function shift2() {
  bl64_msg_show_info 'test shift2'
  echo "Current args: $*"
  echo "Current number or args: $#"
  shift 2
  echo "Current args: $*"
  echo "Current number or args: $#"
}

function shift3() {
  bl64_msg_show_info 'test shift3'
  echo "Current args: $*"
  echo "Current number or args: $#"
  shift 3
  echo "Current args: $*"
  echo "Current number or args: $#"
}

bl64_msg_show_separator 'shift args = shift'
shift1 A
shift2 A B
shift3 A B C

bl64_msg_show_separator 'shift args != shift - expected to fail'
shift3 A B C D E
shift3 A
shift3
