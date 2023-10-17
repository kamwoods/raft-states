/usr/local/bin/raft_mounter.py:
  file.managed:
    - source: salt://raft/mounter/raft_mounter.py
    - user: root
    - group: root
    - mode: 755
