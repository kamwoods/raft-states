{%- set user = salt['pillar.get']('raft_user', 'raftadmin') -%}

{%- if user == "root" -%}
  {%- set home = "/root" -%}
{%- else %}
  {%- set home = "/home/" + user -%}
{%- endif -%}

include:
  - raft.config.user
  - raft.packages.gnome-sushi
  - raft.packages.gnome-system-tools
  - raft.packages.gnome-tweaks
  - raft.packages.gnome-shell-extensions
  - raft.packages.gnome-shell-extension-prefs

raft-theme-applications-merged-dir:
  file.directory:
    - name: /etc/xdg/menus/applications-merged
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644
    - recurse:
      - user
      - group
      - mode
    - require:
      - sls: raft.packages.gnome-sushi
      - sls: raft.packages.gnome-system-tools
      - sls: raft.packages.gnome-tweaks
      - sls: raft.packages.gnome-shell-extensions
      - sls: raft.packages.gnome-shell-extension-prefs

raft-theme-menu-config-menus:
  file.recurse:
    - name: /etc/xdg/menus/applications-merged/
    - source: salt://raft/theme/menu-config
    - include_pat: '*.menu'
    - user: root
    - group: root
    - file_mode: 644
    - require:
      - file: raft-theme-applications-merged-dir

raft-theme-menu-config-directories:
  file.recurse:
    - name: /usr/share/desktop-directories/
    - source: salt://raft/theme/menu-config/
    - include_pat: '*.directory'
    - user: root
    - group: root
    - file_mode: 644
    - require:
      - file: raft-theme-menu-config-menus

raft-theme-applications-desktop-files:
  file.recurse:
    - name: /usr/share/applications/
    - source: salt://raft/theme/menu-config/
    - include_path: '*.desktop'
    - user: root
    - group: root
    - file_mode: 644
    - require:
      - file: raft-theme-menu-config-directories
