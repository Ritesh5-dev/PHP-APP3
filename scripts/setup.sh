#!/bin/bash
yum install -y httpd php
systemctl enable httpd
systemctl start httpd
