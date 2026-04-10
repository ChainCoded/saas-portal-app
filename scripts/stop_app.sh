#!/bin/bash
set -e

if systemctl list-unit-files | grep -q '^httpd.service'; then
  if systemctl is-active --quiet httpd; then
    sudo systemctl stop httpd || true
  fi
fi

exit 0