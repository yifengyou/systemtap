#!/bin/bash

set -x

sudo yum makecache
sudo yum install -y \
	--enablerepo baseos-debug \
	systemtap systemtap-runtime \
	kernel-devel-$(uname -r) \
	kernel-debuginfo-$(uname -r) \
	kernel-debuginfo-common-$(uname -m)-$(uname -r)

echo "All done!"
