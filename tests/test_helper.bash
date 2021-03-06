load lib/assertions

export AUDIO_MANIPULATION_TEST_DIR="${BATS_TMPDIR}/audio-manipulation"
export AUDIO_MANIPULATION_TMP_BIN="${AUDIO_MANIPULATION_TEST_DIR}/bin"
export AUDIO_MANIPULATION_CWD="${AUDIO_MANIPULATION_TEST_DIR}/cwd"

export PATH="${BATS_TEST_DIRNAME}/libexec:$PATH"
export PATH="${BATS_TEST_DIRNAME}/../libexec:$PATH"
export PATH="${AUDIO_MANIPULATION_TMP_BIN}:$PATH"

mkdir -p "${AUDIO_MANIPULATION_TMP_BIN}"
mkdir -p "${AUDIO_MANIPULATION_TEST_DIR}"
mkdir -p "${AUDIO_MANIPULATION_CWD}"

setup() {
  cd "${AUDIO_MANIPULATION_CWD}"
}

teardown() {
  rm -rf "${AUDIO_MANIPULATION_TEST_DIR}"
}
