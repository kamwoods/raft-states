include:
  - raft.packages.guymager

guymager-lang:
  file.managed:
    - name: /usr/share/guymager/guymager_en-CH.qm
    - source: salt://raft/env/guymager-config/guymager_en-CH.qm
    - makedirs: True
    - require:
      - sls: raft.packages.guymager

guymager-config:
  file.managed:
    - name: /etc/guymager/local.cfg
    - source: salt://raft/env/guymager-config/local.cfg
    - makedirs: True
    - require:
      - sls: raft.packages.guymager
