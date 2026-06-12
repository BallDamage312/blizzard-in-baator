#!/bin/bash

cd "$(dirname "$0")" || exit 1
mkdir -p logs

if [ ! -x "./weidu" ]; then
  echo "Missing ./weidu"
  echo "Put the macOS WeiDU binary in this game folder and name it: weidu"
  echo
  read -r -p "Press Return to close this window..."
  exit 1
fi

if [ ! -f "BlizzardInBaator/blizzardinbaator.tp2" ]; then
  echo "Missing BlizzardInBaator/blizzardinbaator.tp2"
  echo "Extract the BlizzardInBaator folder into this game folder."
  echo
  read -r -p "Press Return to close this window..."
  exit 1
fi

./weidu "BlizzardInBaator/blizzardinbaator.tp2" --log "logs/blizzardinbaator.debug"
status=$?

echo
if [ "$status" -eq 0 ]; then
  echo "WeiDU finished."
else
  echo "WeiDU exited with status $status."
  echo "Check logs/blizzardinbaator.debug for details."
fi

echo
read -r -p "Press Return to close this window..."
exit "$status"
