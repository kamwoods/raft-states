{% set user = salt['pillar.get']('raft_user', 'raftadmin') %}

include:
  - raft.config.user

raft-xhost:
  cmd.run:
    - name: "xhost +"
    - shell: /bin/bash
    - require:
      - user: raft-user-{{ user }}
