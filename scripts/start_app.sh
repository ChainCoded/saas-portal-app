#!/bin/bash
set -e

sudo systemctl restart httpd
sudo systemctl enable httpd --no-pager

exit 0