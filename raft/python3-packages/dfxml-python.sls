include:
  - raft.packages.python3
  - raft.packages.git

raft-python3-packages-dfxml:
  pip.installed:
    - name: git+https://github.com/dfxml-working-group/dfxml_python.git
    - bin_env: /usr/bin/python3
    - require:
      - sls: raft.packages.python3
      - sls: raft.packages.git

