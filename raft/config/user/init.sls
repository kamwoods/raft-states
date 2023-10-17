include:
  - raft.config.user.user
  - raft.config.user.bash-rc
  - raft.config.user.folders

raft-config-user:
  test.nop:
    - name: raft-config-user
    - require:
      - sls: raft.config.user.user
      - sls: raft.config.user.bash-rc
      - sls: raft.config.user.folders
