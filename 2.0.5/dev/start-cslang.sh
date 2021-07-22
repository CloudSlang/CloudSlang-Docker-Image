#! /bin/bash

/etc/init.d/ssh start > /dev/null 2>&1

exec /usr/cslang/cslang-cli/bin/cslang
