include:
  - raft.repos.ubuntu-multiverse
  - raft.repos.ubuntu-universe
  - raft.repos.docker
  - raft.repos.siegfried

raft-repos:
  test.nop:
    - name: raft-repos
    - require:
      - sls: raft.repos.ubuntu-multiverse
      - sls: raft.repos.ubuntu-universe
      - sls: raft.repos.docker
      - sls: raft.repos.siegfried
