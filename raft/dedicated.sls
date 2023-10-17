include:
  - raft.addon
  - raft.theme

raft-dedicated:
  test.nop:
    - require:
      - sls: raft.addon
      - sls: raft.theme
