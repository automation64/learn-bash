#!/usr/bin/env bash
bl64_msg_show_separator 'invalid expansions'
echo 'test-{1..4}'
echo "test-{1..4}"
echo "$STRING-{1..4}"
echo test-{$FROM..$TO}
