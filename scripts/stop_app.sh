#!/bin/bash
set -e

if systemctl is-active --quiet httpd; then
  sudo systemctl stop httpd
fi