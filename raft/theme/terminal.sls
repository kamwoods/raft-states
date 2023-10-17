{% set user = salt['pillar.get']('raft_user', 'raftadmin') %}
{% if user == "root" %}
  {% set home = "/root" %}
{% else %}
  {% set home = "/home/" + user %}
{% endif %}

include:
  - raft.config.user.user
  - raft.theme.xhost
  - raft.packages.dbus-x11

raft-theme-terminal-profile-file:
  file.managed:
    - name: /usr/share/raft/resources/terminal-profile-dark.txt
    - source: salt://raft/theme/terminal-profile-dark.txt
    - user: root
    - group: root
    - mode: 0644
    - makedirs: True

raft-dbus-address:
  cmd.run:
    - name: export DBUS_SESSION_BUS_ADDRESS=$(dbus-launch | grep DBUS_SESSION_BUS_ADDRESS | cut -d= -f2-)
    - shell: /bin/bash
    - runas: {{ user }}
    - cwd: {{ home }}
    - require:
      - user: raft-user-{{ user }}
      - sls: raft.theme.xhost
      - sls: raft.packages.dbus-x11

raft-theme-terminal-profile-install:
  cmd.run:
    - name: dconf load /org/gnome/terminal/legacy/profiles:/ < /usr/share/raft/resources/terminal-profile-dark.txt
    - runas: {{ user }}
    - cwd: {{ home }}
    - shell: /bin/bash
    - require:
      - file: raft-theme-terminal-profile-file
      - user: raft-user-{{ user }}
      - sls: raft.theme.xhost
      - cmd: raft-dbus-address
    - watch:
      - file: raft-theme-terminal-profile-file
      - sls: raft.theme.xhost
      - cmd: raft-dbus-address
