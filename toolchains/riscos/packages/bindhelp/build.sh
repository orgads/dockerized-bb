#! /bin/sh

BINDHELP_VERSION=468

PACKAGE_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
HELPERS_DIR=$PACKAGE_DIR/../..
. $HELPERS_DIR/functions.sh

do_make_bdir

do_svn_fetch !OSLib https://svn.code.sf.net/p/ro-oslib/code/trunk/!OSLib -r"$BINDHELP_VERSION"

mkdir -p "$GCCSDK_INSTALL_CROSSBIN"
do_make -C Tools/BindHelp install bindir="$GCCSDK_INSTALL_CROSSBIN"

do_clean_bdir
