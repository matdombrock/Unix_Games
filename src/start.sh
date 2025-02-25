#!/bin/bash
/etc/init.d/shellinabox start || exit 1
# Keep running in background
tail -f /dev/null
