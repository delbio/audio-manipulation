#!/usr/bin/env bats

load test_helper

@test "without args, show help for root audio-manipulation command" {
  run audio-manipulation-help

  assert_success

  assert_line "Usage: audio-manipulation <command> [<args>]"
}

@test "shows help for a specific command" {
  cat > "${AUDIO_MANIPULATION_TMP_BIN}/audio-manipulation-hello" <<SH
#!shebang
# Usage: audio-manipulation hello <world>
# Summary: Says "hello" to you
# This command is useful for saying hello.
echo hello
SH

  run audio-manipulation-help hello

  assert_success
  assert_output <<SH
Usage: audio-manipulation hello <world>

This command is useful for saying hello.
SH
}
