#!/bin/bash

# Use $1 to get the first argument.

echo Welcome, $USER

site=$1

echo Pinging $1...
ping -c 3 $site

echo Script ending...
