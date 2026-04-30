#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "$SCRIPT_DIR/../.." && pwd)"
CORE_DIR="$REPO_ROOT/packages/core"

usage() {
  printf 'Usage: %s [run]\n' "${0##*/}" >&2
}

run_step() {
  local step="$1"
  printf '==> zig build %s\n' "$step"
  (
    cd "$CORE_DIR"
    zig build "$step"
  )
}

if [[ $# -gt 1 ]]; then
  usage
  exit 1
fi

mode="${1:-run}"

case "$mode" in
  run)
    run_step "fixtures-run"
    ;;
  *)
    usage
    exit 1
    ;;
esac
