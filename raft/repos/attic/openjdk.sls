include:
  - raft.packages.software-properties-common

openjdk-repo:
  pkgrepo.managed:
    - ppa: openjdk-r/ppa
    - refresh: true
    - require:
      - sls: raft.packages.software-properties-common
