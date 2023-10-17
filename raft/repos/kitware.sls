{% if grains['oscodename'] != 'jammy' %}
  {% set release = grains['oscodename'] %}
{% else %}
  {% set release = 'jammy' %}
{% endif %}

include:
  - raft.packages.software-properties-common

raft-kitware-key:
  file.managed:
    - name: /usr/share/keyrings/KITWARE-PGP-KEY.asc
    - source: https://apt.kitware.com/keys/kitware-archive-latest.asc
    - skip_verify: True
    - makedirs: True

raft-kitware-repo:
  pkgrepo.managed:
    - humanname: kitware
    - name: deb [signed-by=/usr/share/keyrings/KITWARE-PGP-KEY.asc arch=amd64] https://apt.kitware.com/ubuntu/ {{ release }} main
    - file: /etc/apt/sources.list.d/kitware.list
    - aptkey: False
    - refresh: true
    - require:
      - sls: raft.packages.software-properties-common
      - file: raft-kitware-key
