#!/bin/bash
ls -Sshd */
find */* -type f -exec dirname {} \; | sort | uniq -c | sort -nr

