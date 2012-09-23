#!/bin/sh
#
# build.sh -- Custom build steps
#
#   Parameters send to this script
#
#       build.sh <PACKAGE> <VERSION> <RELEASE>
# 

${CC:-gcc} $CPPFLAGS $CFLAGS  $LDFLAGS \
  -D__GLIBC__ \
  -o pax \
  ar.c ar_io.c ar_subs.c buf_subs.c cache.c cpio.c file_subs.c \
  ftree.c gen_subs.c getoldopt.c options.c pat_rep.c pax.c \
  sel_subs.c tables.c tar.c tty_subs.c \
  -lc
                                                                                                                            
# End of file
