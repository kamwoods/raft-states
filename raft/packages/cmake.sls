include:
  - raft.repos.kitware

cmake:
  pkg.installed:
    - allow_updates: True
    - upgrade: True
    - require:
      - sls: raft.repos.kitware
