#!/bin/bash

ix=$((i+1))
let OUTPUT_FILE

while true
do
  ix=$((ix+1))
  OUTPUT_FILE="${OUTPUT_PATH}${ix}.zero"
  echo "Writing to ${OUTPUT_FILE}: ${BLOCKS} blocks, ${BYTES} at a time"
  dd if=${INPUT} of=${OUTPUT_FILE} count=${BLOCKS} obs=${BYTES} 2>&1 1>/dev/null
  sleep $WAIT_TIME
done
