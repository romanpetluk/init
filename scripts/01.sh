#!/usr/bin/env bash
grep -v '^#' /etc/passwd | awk -F: ' {print $1, $3, $6} '