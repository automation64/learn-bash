#!/usr/bin/env bash
function case_match_order() {
  bl64_msg_show_info 'match order'
  local option=5

  case "$option" in
    3 | 4 | 5) echo 'matched pattern: 3 4 5' ;;
    4 | 5) echo 'matched pattern: 4 5' ;;
    5) echo 'matched pattern: 5' ;;
    6) echo 'matched pattern: 6' ;;
    *) echo 'matched pattern: *' ;;
  esac

  case "$option" in
    4 | 5) echo 'matched pattern: 4 5' ;;
    3 | 4 | 5) echo 'matched pattern: 3 4 5' ;;
    5) echo 'matched pattern: 5' ;;
    6) echo 'matched pattern: 6' ;;
    *) echo 'matched pattern: *' ;;
  esac

  case "$option" in
    5) echo 'matched pattern: 5' ;;
    3 | 4 | 5) echo 'matched pattern: 3 4 5' ;;
    4 | 5) echo 'matched pattern: 4 5' ;;
    6) echo 'matched pattern: 6' ;;
    *) echo 'matched pattern: *' ;;
  esac

  case "$option" in
    *) echo 'matched pattern: *' ;;
    5) echo 'matched pattern: 5' ;;
    3 | 4 | 5) echo 'matched pattern: 3 4 5' ;;
    4 | 5) echo 'matched pattern: 4 5' ;;
    6) echo 'matched pattern: 6' ;;
  esac
}

function case_match_exit_status() {
  bl64_msg_show_info 'case exit status for pattern match'
  local option=5
  case "$option" in
    5) a='5' ;;
    *) a='*' ;;
  esac
  echo "matched pattern. Status=$?"

  case "$option" in
    6) a='5' ;;
    *) a='*' ;;
  esac
  echo "matched pattern. Status=$?"

  case "$option" in
    5) a='5' ;;
  esac
  echo "no match. Status=$?"

}

function case_branch_exit_status() {
  bl64_msg_show_info 'case exit status for branch execution'
  local option=5
  case "$option" in
    5) false ;;
    *) ;;
  esac
  echo "cmd false. Status=$?"

  case "$option" in
    6) true ;;
    *) ;;
  esac
  echo "cmd true. Status=$?"
}

bl64_msg_show_separator 'case'
case_match_order
case_match_exit_status
case_branch_exit_status
