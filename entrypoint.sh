#!/bin/bash

BIND_OPTIONS=${BIND_OPTIONS:""}
DISABLE_IPV6=${DISABLE_IPV6:-true}

if [ "$DISABLE_IPV6" == "true" ]; then
  BIND_OPTIONS="${BIND_OPTIONS} -4"
fi

exec "$@" $BIND_OPTIONS
