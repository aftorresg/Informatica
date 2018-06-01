#!/bin/bash
set -e
service mysql start
mysql < favoritos.sql
service mysql stop
