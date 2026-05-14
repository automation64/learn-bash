function _assignment_inline() {
  echo "from called function: $INLINE"
}

function assignment_inline() {
  bl64_msg_show_info 'inline variable assignment'
  local INLINE='initial value'
  echo "before calling function: $INLINE"
  INLINE='inline assigned value' _assignment_inline
  echo "after calling function: $INLINE"
}

bl64_msg_show_separator 'assignment'
assignment_inline
