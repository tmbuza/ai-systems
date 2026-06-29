#!/usr/bin/env bash
set -euo pipefail

echo "========================================"
echo "CDI AI Systems: Environment Check"
echo "========================================"

check_cmd () {
  local cmd="$1"
  if command -v "$cmd" >/dev/null 2>&1; then
    echo "FOUND: $cmd -> $(command -v "$cmd")"
  else
    echo "MISSING: $cmd"
  fi
}

check_cmd quarto
check_cmd python
check_cmd Rscript

echo ""
echo "Python version:"
python --version || true

echo ""
echo "Quarto version:"
quarto --version || true
