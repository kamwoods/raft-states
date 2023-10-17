/lib:
  file.recurse:
    - source: salt://raft/env/lib
    - user: root
    - group: root
    - makedirs: True
    - file_mode: keep
