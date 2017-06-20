#!/bin/bash

OUTPUTDIR=$1
GRAPH_FILE=$2

cp -r /opt/jsApp $OUTPUTDIR
cp $GRAPH_FILE $OUTPUTDIR/mapped_graph.json