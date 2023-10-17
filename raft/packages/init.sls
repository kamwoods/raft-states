include:
  - raft.packages.antiword
  - raft.packages.audacity
  - raft.packages.aufs-tools
  - raft.packages.automake
  - raft.packages.autopoint
  - raft.packages.bchunk
  - raft.packages.bison
  - raft.packages.bless
  - raft.packages.brasero
  - raft.packages.build-essential
  - raft.packages.bulk-reviewer
  - raft.packages.ccrypt
  - raft.packages.cdrdao
  - raft.packages.chkrootkit
  - raft.packages.clamav
  - raft.packages.clamav-daemon
  - raft.packages.clamtk
  - raft.packages.clonezilla
  - raft.packages.cmake
  - raft.packages.curl
  - raft.packages.dbus-x11
  - raft.packages.dcfldd
  - raft.packages.dconf
  - raft.packages.default-jre
  - raft.packages.default-jdk
  - raft.packages.dialog
  - raft.packages.discover
  - raft.packages.disktype
  - raft.packages.dkms
  - raft.packages.docker
  - raft.packages.equivs
  - raft.packages.ewf-tools
  - raft.packages.expat
  - raft.packages.expect
  - raft.packages.fdutils
  - raft.packages.ffmpeg
  - raft.packages.filezilla
  - raft.packages.flex
  - raft.packages.foremost
  - raft.packages.g++
  - raft.packages.gadmin-rsync
  - raft.packages.gawk
  - raft.packages.gddrescue
  - raft.packages.ghex
  - raft.packages.gimp
  - raft.packages.git
  - raft.packages.grsync
  - raft.packages.gtkhash
  - raft.packages.guymager
  - raft.packages.hardinfo
  - raft.packages.hashdeep
  - raft.packages.hashrat
  - raft.packages.hdparm
  - raft.packages.hfsplus
  - raft.packages.hfsprogs
  - raft.packages.hfsutils
  - raft.packages.hfsutils-tcltk
  - raft.packages.icedax
  - raft.packages.jexiftoolgui
  - raft.packages.leptonica-progs
  - raft.packages.libafflib-dev
  - raft.packages.libappindicator1
  - raft.packages.libappindicator3-dev
  - raft.packages.libarchive-dev
  - raft.packages.libavcodec-extra
  - raft.packages.libboost-dev
  - raft.packages.libboost-filesystem-dev
  - raft.packages.libboost-program-options-dev
  - raft.packages.libboost-system-dev
  - raft.packages.libboost-test-dev
  - raft.packages.libbz2-dev
  - raft.packages.libcppunit
  - raft.packages.libcppunit-dev
  - raft.packages.libcrypto
  - raft.packages.libcurl4-openssl-dev
  - raft.packages.libdvdread
  - raft.packages.libevent-dev
  - raft.packages.libewf2
  - raft.packages.libexif-dev
  - raft.packages.libexpat1-dev
  - raft.packages.libfuse-dev
  - raft.packages.libicu-dev
  - raft.packages.libimage-exiftool-perl
  - raft.packages.libjpeg-dev
  - raft.packages.libmad0
  - raft.packages.libmagic-dev
  - raft.packages.libmysqlclient-dev
  - raft.packages.libncurses5-dev
  - raft.packages.libncursesw5-dev
  - raft.packages.libnss-myhostname
  - raft.packages.libparse-win32registry-perl
  - raft.packages.libpthread-stubs0-dev
  - raft.packages.libreadline-dev
  - raft.packages.libsodium23
  - raft.packages.libsodium-dev
  - raft.packages.libsqlite3-dev
  - raft.packages.libssl-dev
  - raft.packages.libtalloc-dev
  - raft.packages.libtool
  - raft.packages.libtool-bin
  - raft.packages.libtre-dev
  - raft.packages.libtre5
  - raft.packages.libudev-dev
  - raft.packages.libusb-dev
  - raft.packages.libvhdi-dev
  - raft.packages.libvmdk-dev
  - raft.packages.libvte-common
  - raft.packages.libvte9
  - raft.packages.libxml2-dev
  - raft.packages.libxml2-utils
  - raft.packages.libxslt1-dev
  - raft.packages.linux-headers-generic
  - raft.packages.mate-utils
  - raft.packages.mediainfo
  - raft.packages.mencoder
  - raft.packages.mokutil
  - raft.packages.mplayer
  - raft.packages.mysql-client
  - raft.packages.nwipe
  - raft.packages.openssh
  - raft.packages.plymouth-themes
  - raft.packages.plymouth-x11
  - raft.packages.python3
  - raft.packages.python3-dev
  - raft.packages.python3-testresources
  - raft.packages.python3-numpy
  - raft.packages.python3-pip
  - raft.packages.python3-pyqt
  - raft.packages.python3-setuptools
  - raft.packages.python3-sip-dev
  - raft.packages.python3-tk
  - raft.packages.python3-virtualenv
  - raft.packages.pst-utils
  - raft.packages.sharutils
  - raft.packages.siegfried
  - raft.packages.sleuthkit
  - raft.packages.bulk-extractor
  - raft.packages.smartmontools
  - raft.packages.software-properties-common
  - raft.packages.squashfs-tools
  - raft.packages.ssdeep
  - raft.packages.sudo
  - raft.packages.swig
  - raft.packages.syslinux-utils
  - raft.packages.testdisk
  - raft.packages.tree
  - raft.packages.udisks2
  - raft.packages.unixodbc
  - raft.packages.unixodbc-dev
  - raft.packages.uuid-dev
  - raft.packages.vim
  - raft.packages.vlc
  - raft.packages.xdg-utils
  - raft.packages.xmount
  - raft.packages.xorriso
  - raft.packages.yad
  - raft.packages.zerofree
  - raft.packages.zlib1g-dev

raft-packages:
  test.nop:
    - name: raft-packages
    - require:
      - sls: raft.packages.antiword
      - sls: raft.packages.audacity
      - sls: raft.packages.aufs-tools
      - sls: raft.packages.automake
      - sls: raft.packages.autopoint
      - sls: raft.packages.bchunk
      - sls: raft.packages.bison
      - sls: raft.packages.bless
      - sls: raft.packages.brasero
      - sls: raft.packages.build-essential
      - sls: raft.packages.bulk-reviewer
      - sls: raft.packages.ccrypt
      - sls: raft.packages.cdrdao
      - sls: raft.packages.chkrootkit
      - sls: raft.packages.clamav
      - sls: raft.packages.clamav-daemon
      - sls: raft.packages.clamtk
      - sls: raft.packages.clonezilla
      - sls: raft.packages.cmake
      - sls: raft.packages.curl
      - sls: raft.packages.dbus-x11
      - sls: raft.packages.dcfldd
      - sls: raft.packages.dconf
      - sls: raft.packages.default-jre
      - sls: raft.packages.default-jdk
      - sls: raft.packages.dialog
      - sls: raft.packages.discover
      - sls: raft.packages.disktype
      - sls: raft.packages.dkms
      - sls: raft.packages.docker
      - sls: raft.packages.equivs
      - sls: raft.packages.ewf-tools
      - sls: raft.packages.expat
      - sls: raft.packages.expect
      - sls: raft.packages.fdutils
      - sls: raft.packages.ffmpeg
      - sls: raft.packages.filezilla
      - sls: raft.packages.flex
      - sls: raft.packages.foremost
      - sls: raft.packages.g++
      - sls: raft.packages.gadmin-rsync
      - sls: raft.packages.gawk
      - sls: raft.packages.gddrescue
      - sls: raft.packages.ghex
      - sls: raft.packages.gimp
      - sls: raft.packages.git
      - sls: raft.packages.grsync
      - sls: raft.packages.gtkhash
      - sls: raft.packages.guymager
      - sls: raft.packages.hardinfo
      - sls: raft.packages.hashdeep
      - sls: raft.packages.hashrat
      - sls: raft.packages.hdparm
      - sls: raft.packages.hfsplus
      - sls: raft.packages.hfsprogs
      - sls: raft.packages.hfsutils
      - sls: raft.packages.hfsutils-tcltk
      - sls: raft.packages.icedax
      - sls: raft.packages.jexiftoolgui
      - sls: raft.packages.leptonica-progs
      - sls: raft.packages.libafflib-dev
      - sls: raft.packages.libappindicator1
      - sls: raft.packages.libappindicator3-dev
      - sls: raft.packages.libarchive-dev
      - sls: raft.packages.libavcodec-extra
      - sls: raft.packages.libboost-dev
      - sls: raft.packages.libboost-filesystem-dev
      - sls: raft.packages.libboost-program-options-dev
      - sls: raft.packages.libboost-system-dev
      - sls: raft.packages.libboost-test-dev
      - sls: raft.packages.libbz2-dev
      - sls: raft.packages.libcppunit
      - sls: raft.packages.libcppunit-dev
      - sls: raft.packages.libcrypto
      - sls: raft.packages.libcurl4-openssl-dev
      - sls: raft.packages.libdvdread
      - sls: raft.packages.libevent-dev
      - sls: raft.packages.libewf2
      - sls: raft.packages.libexif-dev
      - sls: raft.packages.libexpat1-dev
      - sls: raft.packages.libfuse-dev
      - sls: raft.packages.libicu-dev
      - sls: raft.packages.libimage-exiftool-perl
      - sls: raft.packages.libjpeg-dev
      - sls: raft.packages.libmad0
      - sls: raft.packages.libmagic-dev
      - sls: raft.packages.libmysqlclient-dev
      - sls: raft.packages.libncurses5-dev
      - sls: raft.packages.libncursesw5-dev
      - sls: raft.packages.libnss-myhostname
      - sls: raft.packages.libparse-win32registry-perl
      - sls: raft.packages.libpthread-stubs0-dev
      - sls: raft.packages.libreadline-dev
      - sls: raft.packages.libsodium23
      - sls: raft.packages.libsodium-dev
      - sls: raft.packages.libsqlite3-dev
      - sls: raft.packages.libssl-dev
      - sls: raft.packages.libtalloc-dev
      - sls: raft.packages.libtool
      - sls: raft.packages.libtool-bin
      - sls: raft.packages.libtre-dev
      - sls: raft.packages.libtre5
      - sls: raft.packages.libudev-dev
      - sls: raft.packages.libusb-dev
      - sls: raft.packages.libvhdi-dev
      - sls: raft.packages.libvmdk-dev
      - sls: raft.packages.libvte-common
      - sls: raft.packages.libvte9
      - sls: raft.packages.libxml2-dev
      - sls: raft.packages.libxml2-utils
      - sls: raft.packages.libxslt1-dev
      - sls: raft.packages.linux-headers-generic
      - sls: raft.packages.mate-utils
      - sls: raft.packages.mediainfo
      - sls: raft.packages.mencoder
      - sls: raft.packages.mokutil
      - sls: raft.packages.mplayer
      - sls: raft.packages.mysql-client
      - sls: raft.packages.nwipe
      - sls: raft.packages.openssh
      - sls: raft.packages.plymouth-themes
      - sls: raft.packages.plymouth-x11
      - sls: raft.packages.python3
      - sls: raft.packages.python3-dev
      - sls: raft.packages.python3-testresources
      - sls: raft.packages.python3-numpy
      - sls: raft.packages.python3-pip
      - sls: raft.packages.python3-pyqt
      - sls: raft.packages.python3-setuptools
      - sls: raft.packages.python3-sip-dev
      - sls: raft.packages.python3-tk
      - sls: raft.packages.python3-virtualenv
      - sls: raft.packages.pst-utils
      - sls: raft.packages.sharutils
      - sls: raft.packages.siegfried
      - sls: raft.packages.sleuthkit
      - sls: raft.packages.bulk-extractor
      - sls: raft.packages.smartmontools
      - sls: raft.packages.software-properties-common
      - sls: raft.packages.squashfs-tools
      - sls: raft.packages.ssdeep
      - sls: raft.packages.sudo
      - sls: raft.packages.swig
      - sls: raft.packages.syslinux-utils
      - sls: raft.packages.testdisk
      - sls: raft.packages.tree
      - sls: raft.packages.udisks2
      - sls: raft.packages.unixodbc
      - sls: raft.packages.unixodbc-dev
      - sls: raft.packages.uuid-dev
      - sls: raft.packages.vim
      - sls: raft.packages.vlc
      - sls: raft.packages.xdg-utils
      - sls: raft.packages.xmount
      - sls: raft.packages.xorriso
      - sls: raft.packages.yad
      - sls: raft.packages.zerofree
      - sls: raft.packages.zlib1g-dev
