#!/bin/bash
set -e

sudo systemctl restart httpd
sudo systemctl enable httpd