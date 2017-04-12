#!/bin/sh

/usr/sbin/rspamd -u rspamd -g rspamd -c /etc/rspamd/rspamd.conf -p /run/rspamd/rspamd.pid
/usr/sbin/rmilter -c /etc/rmilter/rmilter.conf

while kill -0 "`cat /run/rspamd/rspamd.pid | xargs`" &> /dev/null; do
  sleep 1
done
