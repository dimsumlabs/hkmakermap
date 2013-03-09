#!/bin/sh

#
# Back up the HK/SZ DIY Computer, Electronics (Hackjam/DSL) map's KML
# see README.md for details

KML_URL="https://maps.google.com/maps/ms?ie=UTF8&authuser=0&msa=0&output=kml&msid=208251870312483111421.0004ccd0537b691871844"

SCRIPT=$(readlink -f $0)
SCRIPT_DIR=$(dirname $SCRIPT)
MAP_DIR="$SCRIPT_DIR/kml"


if [ "$1" = "publish" ] ; then
    echo 'To publish the KML, click the "EDIT" button in Google Maps, then click the "Import" link and find the KML file you want.'
else
    mkdir -p "$MAP_DIR"
    MAP_FILE="$MAP_DIR/hkmakermap-$(date +%Y%m%d-%H%M%S).kml"
    curl -s "$KML_URL" > "$MAP_FILE"
fi
