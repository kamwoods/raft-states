{% set user = salt['pillar.get']('raft_user', 'raftadmin') %}
{% set desktop = salt['cmd.run']('sudo -u ' + user + ' xdg-user-dir DESKTOP') %}
{% set all_users = salt['user.list_users']() %}
{% if user in all_users %}
  {% set group = salt['cmd.run']('id -gn ' + user) %}
{% else %}
  {% set group = user %}
{% endif %}

include:
  - raft.config.user

mediasymlink:
  file.symlink:
    - name: {{ desktop }}/Shared Folders and Media
    - target: /media
    - user: {{ user }}
    - group: {{ group }}
    - require:
      - user: raft-user-{{ user }}
