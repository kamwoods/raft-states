include:
  - raft.repos
  - raft.packages
  - raft.python3-packages
  - raft.config
  - raft.env
  - raft.tools
  - raft.mounter

raft-version-file:
  file.managed:
    - name: /etc/raft-version
    - source: salt://raft/VERSION
    - user: root
    - group: root
    - require:
      - sls: raft.repos
      - sls: raft.packages
      - sls: raft.python3-packages
      - sls: raft.config
      - sls: raft.env
      - sls: raft.tools
      - sls: raft.mounter
