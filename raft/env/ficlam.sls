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
  - raft.packages.sleuthkit

ficlam-config:
  file.directory:
    - name: {{ home }}/.fiwalk
    - user: {{ user }}
    - group: {{ group }}
    - file_mode: 755
    - dir_mode: 755
    - makedirs: True
    - require:
      - user: raft-user-{{ user }}

ficlam-script:
  file.managed:
    - name: {{ home }}/.fiwalk/ficlam.sh
    - source: salt://raft/files/ficlam.sh
    - user: {{ user }}
    - group: {{ group }}
    - mode: 755
    - require:
      - sls: raft.packages.sleuthkit
