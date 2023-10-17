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

mountwinalias:
  file.append:
    - name: {{ home }}/.bash_aliases
    - text: "alias mountwin='mount -o ro,loop,show_sys_files,streams_interface=windows'"
    - unless: 'grep -i "alias mountwin" {{ home }}/.bash_aliases'
    - require:
      - user: raft-user-{{ user }}

mountwinalias-root:
  file.append:
    - name: /root/.bash_aliases
    - text: "alias mountwin='mount -o ro,loop,show_sys_files,streams_interface=windows'"
    - unless: 'grep -i "alias mountwin" /root/.bash_aliases'

{{ home }}/.bash_aliases:
  file.managed:
    - mode: 644
    - user: {{ user }}
    - group: {{ group }}
    - require:
      - file: mountwinalias

