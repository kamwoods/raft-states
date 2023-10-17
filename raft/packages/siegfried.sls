include:
  - raft.repos.siegfried

siegfried:
  pkg.installed:
    - require:
      - sls: raft.repos.siegfried
