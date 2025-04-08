#!/bin/bash

# Redirect the error output of a non-existent command to error.log

nonexistent_command 2> error.log

if [ -s "error.log" ]; then
  echo "Error output redirected to error.log"
  echo "Contents of error.log:"
  cat error.log
else
  echo "No error output was generated."
fi
