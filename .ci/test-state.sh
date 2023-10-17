#!/bin/bash

set -x

DISTRO=${DISTRO:="focal"}
STATE=$1

docker run -it --rm --name="raft-state-${STATE}" -v `pwd`/raft:/srv/salt/raft --cap-add SYS_ADMIN kamwoods/raft-salt-tester:${DISTRO} \
  salt-call -l debug --local --retcode-passthrough --state-output=mixed state.sls ${STATE} pillar="{raft_user: raftadmin}"
