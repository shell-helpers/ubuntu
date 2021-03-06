#!/bin/bash

# DESCRIPTION
# Executes the command line interface.

# USAGE
# ./run.sh OPTION

# SETTINGS
source settings/settings.sh

# FUNCTIONS
source functions/options.sh

# EXECUTION
while true; do
  if [[ $# == 0 ]]; then
    printf "\nUsage: run OPTION\n"
    printf "\nUbuntu Options:\n"
    printf "  d: Configure default settings.\n"
    printf "  p: Install system packages.\n"
    printf "  u: Configure users.\n"
    printf "  f: Finalize setup.\n"
    printf "  r: Reboot server.\n"
    printf "  i: Perform complete install (i.e. configure default settings, install packages, configure users, finalize, and reboot.\n"
    printf "  q: Quit/Exit.\n\n"
    read -p "Enter selection: " response
    printf "\n"
    process_option $response
  else
    process_option $1
  fi
done
