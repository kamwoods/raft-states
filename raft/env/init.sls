include:
  - raft.env.dot-local
  - raft.env.etc
  - raft.env.guymager-config 
  - raft.env.lib
  - raft.env.mountwinalias
  - raft.env.sudoers
  - raft.env.floppyconfig
  - raft.env.ficlam
  - raft.env.usr
  - raft.env.vimrc
  - raft.env.vim-support

raft-env:
  test.nop:
    - name: raft-env
    - require:
      - sls: raft.env.dot-local
      - sls: raft.env.etc
      - sls: raft.env.guymager-config
      - sls: raft.env.lib
      - sls: raft.env.mountwinalias
      - sls: raft.env.sudoers
      - sls: raft.env.floppyconfig
      - sls: raft.env.ficlam
      - sls: raft.env.usr
      - sls: raft.env.vimrc
      - sls: raft.env.vim-support
