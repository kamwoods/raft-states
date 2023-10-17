include:
  - raft.packages.libappindicator3-1

libappindicator3-dev:
  pkg.installed:
    - require:
      - sls: raft.packages.libappindicator3-1
