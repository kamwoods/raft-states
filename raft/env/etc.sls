/etc:
  file.recurse:
    - source: salt://raft/env/etc
    - user: root
    - group: root
    - makedirs: True
    - file_mode: keep
