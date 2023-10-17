include:
  - raft.packages.libewf2
  - raft.packages.libewf-dev

ewf-tools:
  pkg.installed:
    - requires:
      - sls: raft.packages.libewf2
      - sls: raft.packages.libewf-dev
