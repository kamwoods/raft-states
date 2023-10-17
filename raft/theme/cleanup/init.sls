{%- set user = salt['pillar.get']('raft_user', 'raftadmin') -%}

include:
  - raft.packages.docker

raft-theme-cleanup-extra-apps:
  pkg.removed:
    - pkgs:
      - aisleriot
      - avahi-daemon
      - transmission
      - caffeine
      - cheese
      - gnome-mahjongg
      - gnome-mines
      - rhythmbox
      - gnome-sudoku
      - unattended-upgrades
      - transmission-gtk
      - gnome-2048
      - yelp

raft-theme-cleanup-disable-auto-upgrades:
  file.append:
    - name: /etc/apt/apt.conf.d/20auto-upgrades
    - text: "APT::Periodic::Update-Package-Lists \"0\";\nAPT::Periodic::Unattended-Upgrade \"0\";"
    - makedirs: True

{%- if salt['file.file_exists']('/sbin/runlevel') %}

raft-theme-cleanup-service-bluetooth:
  service.dead:
    - name: bluetooth
    - enable: False

raft-theme-cleanup-service-docker:
  service.dead:
    - name: docker
    - enable: False
    - require:
      - sls: raft.packages.docker

raft-theme-cleanup-docker-wrapper:
  file.managed:
    - replace: False
    - user: root
    - group: root
    - mode: 755
    - name: /usr/local/bin/docker
    - source: salt://raft/theme/cleanup/docker-wrapper.sh
    - makedirs: True
    - require:
      - sls: raft.packages.docker

{% endif %}

raft-theme-cleanup-autoremove:
  cmd.run:
    - name: apt-get autoremove -y --purge
