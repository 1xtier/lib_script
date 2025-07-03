#!/usr/bin/env bash


function log_msg() {
  echo "$1" | tee -a "$LOG"
}
function err() {
  echo "ERROR: $1" | tee -a "$LOG" 1>&2
  exit 1
}
