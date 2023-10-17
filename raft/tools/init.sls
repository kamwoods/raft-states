include:
  - raft.tools.hfsexplorer
  - raft.tools.dumpfloppy
  - raft.tools.nsrllookup

raft-tools:
  test.nop:
    - name: raft-tools
    - require:
      - sls: raft.tools.hfsexplorer
      - sls: raft.tools.dumpfloppy
      - sls: raft.tools.nsrllookup
