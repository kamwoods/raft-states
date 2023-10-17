include:
  - raft.repos.docker

remove-docker-engine:
  pkg.removed:
    - name: docker-engine

install-docker-ce:
  pkg.installed:
    - name: docker-ce
    - require:
      - pkg: remove-docker-engine
      - sls: raft.repos.docker
