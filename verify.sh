#!/bin/bash
for i in "$1"/*/*; do
  echo "${i}: $(z3 "${i}")"
done
