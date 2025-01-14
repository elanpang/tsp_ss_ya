#!/bin/sh
echo $0 $*
EMU_DIR=/mnt/SDCARD/Emus/SS
YA_DIR=$EMU_DIR/.yabasanshiro


$EMU_DIR/cpufreq.sh
$EMU_DIR/cpuswitch.sh

cd $EMU_DIR/.yabasanshiro
export HOME="$EMU_DIR/.yabasanshiro"

BIOS_FILE=""
$YA_DIR/yabasanshiro -r 3 -i "$@" -b "$BIOS_FILE"
