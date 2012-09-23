#!/bin/sh

TMPDIR=${TMPDIR:-/tmp}

Run ()
{
    echo "$*"
    shift
    eval "$@"
}

file=$TMPDIR/archive.$$.pax

trap "rm -f $file" 0 1 2 3 15

Run "TEST make archive:"  pax -wf $file .
Run "TEST list contents:" "pax -f  $file | head"

# End of file
