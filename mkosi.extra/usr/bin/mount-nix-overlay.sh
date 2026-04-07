#!/usr/bin/bash
set -e

# /usr/share/nix-store is in the read-only composefs image — don't try to mkdir it
mkdir -p /var/lib/nix-store
mkdir -p /var/cache/nix-store
mkdir -p /nix

# Bail out cleanly if already mounted (e.g. service restart)
if mountpoint -q /nix; then
  echo "nix overlay already mounted at /nix, skipping"
  exit 0
fi

mount -t overlay overlay \
  -o lowerdir=/usr/share/nix-store,upperdir=/var/lib/nix-store,workdir=/var/cache/nix-store \
  /nix
