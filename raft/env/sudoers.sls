{% set user = salt['pillar.get']('raft_user', 'raftadmin') %}

include:
  - raft.config.user

sudoers:
  file.append:
    - name: /etc/sudoers.d/raft
    - text:
      - "{{ user }} ALL=NOPASSWD: ALL\nDefaults env_keep += \"ftp_proxy http_proxy https_proxy no_proxy\""
    - makedirs: True
    - require:
      - user: raft-user-{{ user }}
