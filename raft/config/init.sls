include:
  - raft.config.user
  - raft.config.timezone
  - raft.config.salt-minion
  - raft.config.ssh

raft-config:
  test.nop:
    - name: raft-config
    - require:
      - sls: raft.config.user
      - sls: raft.config.timezone
      - sls: raft.config.salt-minion
      - sls: raft.config.ssh
