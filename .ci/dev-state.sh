#!/bin/bash
echo "salt-call -l debug --local --retcode-passthrough --state-output=mixed state.sls raft.  pillar='{\"raft_user\": \"raftadmin\"}' --log-file=/saltstack.log --log-file-level=debug --out-file=/saltstack.log --out-file-append"
set -x

DISTRO=${DISTRO:="focal"}
STATE=$1

docker run -it --rm --name="raft-state-${DISTRO}" -v `pwd`/raft:/srv/salt/raft --cap-add SYS_ADMIN kamwoods/raft-tester:${DISTRO} \
  /bin/bash
