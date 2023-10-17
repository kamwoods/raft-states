#!/bin/bash

docker run -it --rm --name="raft-test-all" -v `pwd`/bitcurator:/srv/salt/raft --cap-add SYS_ADMIN kamwoods/raft-salt-tester:bionic:focal \
  salt-call -l info --local --retcode-passthrough --state-output=mixed state.sls raft pillar='{"raft_user": "raftadmin"}'
