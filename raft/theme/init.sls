include:
  - raft.packages.gnome-sushi
  - raft.packages.gnome-system-tools
  - raft.packages.gnome-tweaks
  - raft.packages.gnome-shell-extensions
  - raft.packages.gnome-shell-extension-prefs
  - raft.packages.nautilus-script-audio-convert
  - raft.packages.nautilus-scripts-manager
  - raft.theme.raft-theme
  - raft.theme.documentation
  - raft.theme.menu-config
  - raft.theme.xhost
  - raft.theme.terminal
  - raft.theme.mediasymlink
  - raft.packages.open-vm-tools-desktop
  - raft.theme.cleanup

raft-theme:
  test.nop:
    - name: raft-theme
    - require:
      - sls: raft.packages.gnome-sushi
      - sls: raft.packages.gnome-system-tools
      - sls: raft.packages.gnome-tweaks
      - sls: raft.packages.gnome-shell-extensions
      - sls: raft.packages.gnome-shell-extension-prefs
      - sls: raft.packages.nautilus-script-audio-convert
      - sls: raft.packages.nautilus-scripts-manager
      - sls: raft.theme.raft-theme
      - sls: raft.theme.documentation
      - sls: raft.theme.menu-config
      - sls: raft.theme.xhost
      - sls: raft.theme.terminal
      - sls: raft.theme.mediasymlink
      - sls: raft.packages.open-vm-tools-desktop
      - sls: raft.theme.cleanup
