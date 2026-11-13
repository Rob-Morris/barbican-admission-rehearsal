#!/bin/bash
set -euo pipefail
[[ $# == 1 && -d "$1" && ! -L "$1" && -z "$(ls -A "$1")" ]]
[[ "$(uname -s)" == Darwin && "$(uname -m)" == arm64 ]]
provider_root=$(cd "$(dirname "$0")/.." && pwd -P)
mkdir "$1/bin"
while read -r sha name; do
  source_file="$provider_root/fixtures/$name.data"
  [[ -f "$source_file" && ! -L "$source_file" ]]
  [[ "$(shasum -a 256 "$source_file" | awk '{print $1}')" == "$sha" ]]
  cp "$source_file" "$1/bin/$name"
  chmod 755 "$1/bin/$name"
done <<'FIXTURES'
54b6742984ec6c5a16a84baf4d8951475b3ddb7b147923483d88e799942975c1 cargo-barbican
c2cc9dff61b5a2912aadaf02142984d67fbf4bcdcf8952407cbdc01194010e33 cargo-deny
78489d4c3fd75c92cfb0e86e1384a2ff8519c5533683c93102e719874f2d0cec cargo-audit
FIXTURES
curl --fail --silent --show-error --proto '=https' --connect-timeout 30 --max-time 180 --max-filesize 11408656 \
  'https://static.rust-lang.org/rustup/archive/1.29.3/aarch64-apple-darwin/rustup-init' -o "$1/bin/rustup"
[[ "$(wc -c < "$1/bin/rustup" | tr -d ' ')" == 11408656 ]]
[[ "$(shasum -a 256 "$1/bin/rustup" | awk '{print $1}')" == 63752a1919a3a4793173ec70f8f212621a7ce38ba6a246095984482f4de20f9f ]]
chmod 755 "$1/bin/rustup"
# Rustup dispatches by argv[0]; no bootstrap install or compiler probe occurs.
for proxy in cargo rustc rustdoc; do
  cp "$1/bin/rustup" "$1/bin/$proxy"
done

[[ -n "${GITHUB_ENV-}" && -f "$GITHUB_ENV" && ! -L "$GITHUB_ENV" ]]
mkdir -m 700 "$1/home" "$1/tmp" "$1/target"
{
  printf 'HOME=%s/home\nTMPDIR=%s/tmp\nCARGO_TARGET_DIR=%s/target\n' "$1" "$1" "$1"
  printf 'GIT_TERMINAL_PROMPT=0\n'
} >> "$GITHUB_ENV"
