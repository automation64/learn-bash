#!/usr/bin/env bash
bl64_msg_show_separator 'string expansion'
echo test-{a,b,c}
echo test-{c,a,b}
echo test-{a..c}
echo test-{c..a}
echo test-{a..e..2}
echo "$STRING"-{a,b,c,d}
