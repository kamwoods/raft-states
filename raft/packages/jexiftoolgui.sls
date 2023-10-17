# Use of sources requires that the 'source:' field be the Package value from:
# dpkg -I <deb_file>
# Anything else will not be accepted and state will fail.

include:
  - raft.packages.default-jre
  - raft.packages.libimage-exiftool-perl

jexiftoolgui-deb:
  pkg.installed:
    - sources:
      - jexiftoolgui: https://github.com/hvdwolf/jExifToolGUI/releases/download/2.0.2/jexiftoolgui-2.0.2.deb
    - require:
      - sls: raft.packages.default-jre
      - sls: raft.packages.libimage-exiftool-perl

