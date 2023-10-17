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

{{ home }}/.local:
  file.recurse:
    - source: salt://raft/env/.local
    - user: {{ user }}
    - group: {{ group }}
    - makedirs: True
    - file_mode: keep
