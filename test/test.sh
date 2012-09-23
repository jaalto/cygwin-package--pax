#!/bin/sh

Run ()
{
    echo "$*"
    shift
    eval "$@"
}

file=../archive.pax

Run "make archive:"  pax -wf $file .
Run "list contents:" "pax -f  $file | head"

rm -f $file

# End of file
