include:
  - raft.packages.python3

unicodecsv:
  pip.installed:
    - bin_env: /usr/bin/python3
    - upgrade: True
    - require:
      - sls: raft.packages.python3
