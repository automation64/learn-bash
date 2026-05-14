#!/usr/bin/env bash

function if_exit_status() {
  bl64_msg_show_info 'exit status'
  if true; then true; fi
  echo "if, match, cmd true. Status=$?"

  if true; then false; fi
  echo "if, match, cmd false. Status=$?"

  if false; then true; fi
  echo "if, not match, cmd true. Status=$?"

  if false; then false; fi
  echo "if, not match, cmd false. Status=$?"
}

bl64_msg_show_separator 'if'
if_exit_status
