{% set user = salt['pillar.get']('raft_user', 'raftadmin') %}
{% if user == "root" %}
  {% set home = "/root" %}
{% else %}
  {% set home = "/home/" + user %}
{% endif %}
{% set all_users = salt['user.list_users']() %}
{% if user in all_users %}
  {% set group = salt['cmd.run']('id -gn ' + user) %}
{% else %}
  {% set group = user %}
{% endif %}

include:
  - raft.config.user

raft-theme-config:
  file.managed:
      - name: /usr/share/raft/raft-theme.sh
      - source: salt://raft/theme/raft-theme.sh
      - mode: 755
      - makedirs: True

raft-theme-config-autostart:
  file.managed:
    - replace: False
    - user: {{ user }}
    - group: {{ group }}
    - name: {{ home }}/.config/autostart/raft-theme.desktop
    - source: salt://raft/theme/raft-theme.desktop
    - makedirs: True
    - require:
      - user: raft-user-{{ user }}
      - file: raft-theme-config
