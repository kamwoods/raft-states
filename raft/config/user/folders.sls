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
  - raft.config.user.user

folders-config-autostart:
  file.directory:
    - name: {{ home }}/.config/autostart
    - user: {{ user }}
    - group: {{ group }}
    - makedirs: True
    - require:
      - user: raft-user-{{ user }}
