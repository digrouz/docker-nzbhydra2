#!/usr/bin/env bash

. /etc/profile
. /usr/local/bin/docker-entrypoint-functions.sh

MYUSER="${APPUSER}"
MYUID="${APPUID}"
MYGID="${APPGID}"

AutoUpgrade
ConfigureUser

if [ "$1" == 'nzbhydra2' ]; then
  DockLog "Fixing permissions on /config /opt/nzbhydra2"
  chown -R "${MYUSER}":"${MYUSER}" /config /opt/nzbhydra2
  chmod -R g+w /config /opt/nzbhydra2
  RunDropletEntrypoint
  DockLog "Starting app: ${1}"
  exec su-exec "${MYUSER}" python3 /opt/nzbhydra2/nzbhydra2wrapperPy3.py --nobrowser --datafolder /config
else
  DockLog "Starting app: ${@}"
  exec "$@"
fi

