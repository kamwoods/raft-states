include:
  - raft.mounter.raftmounter
  - raft.mounter.raftpolicyapp
  - raft.mounter.raftautostart

raft-mounter:
  test.nop:
    - name: raft-mounter
    - require:
      - sls: raft.mounter.raftmounter
      - sls: raft.mounter.raftpolicyapp
      - sls: raft.mounter.raftautostart
