include:
  - raft.packages.python3

docopt:
  pip.installed:
    - bin_env: /usr/bin/python3
    - upgrade: True
    - require:
      - sls: raft.packages.python3