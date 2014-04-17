#!/bin/bash
#
# $Id: bootstrap.sh,v 1.6 2013/02/15 00:20:46 clem Exp $
#
# @Copyright@
# @Copyright@
#
#

. $ROLLSROOT/etc/bootstrap-functions.sh


#
# we need to download all the cloud-init stuff
#
mkdir -p RPMS/x86_64

tmpdir=`mktemp -d`
cd $tmpdir
yumdownloader --resolve --enablerepo epel cloud-init
cd -

cp $tmpdir/*rpm  RPMS/x86_64/

