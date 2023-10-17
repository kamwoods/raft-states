include:
  - raft.packages.python3

bagit:
  pip.installed:
    - bin_env: /usr/bin/python3
    - upgrade: True
    - require:
      - sls: raft.packages.python3
