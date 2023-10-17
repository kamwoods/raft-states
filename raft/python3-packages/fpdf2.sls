include:
  - raft.packages.python3

fpdf2:
  pip.installed:
    - bin_env: /usr/bin/python3
    - require:
      - sls: raft.packages.python3
