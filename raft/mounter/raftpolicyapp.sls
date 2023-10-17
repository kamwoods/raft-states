/usr/local/bin/raft_policyapp.py:
  file.managed:
    - source: salt://raft/mounter/raft_policyapp.py
    - user: root
    - group: root
    - mode: 755
