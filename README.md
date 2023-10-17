![Logo](https://github.com/kamwoods/raft-states/blob/main/raft/env/usr/share/raft/resources/images/RAFT-Base-Logo-96x96.png)

# raft-states

[![GitHub issues](https://img.shields.io/github/issues/kamwoods/raft-states.svg)](https://github.com/kamwoods/raft-states/issues)
[![GitHub forks](https://img.shields.io/github/forks/kamwoods/raft-states.svg)](https://github.com/kamwoods/raft-states/network)

**RAFT is experimental. Included tools, scripts, desktop configuration, and build procedures may change frequently.**

RAFT is a cast-based toolkit for digital preservation and data recovery tasks.

## Installation

**1. Install Ubuntu 22.04LTS on a host system or virtual machine.**

Boot into Ubuntu 22.04LTS, open a terminal, and install cast using the following commands:

```
wget https://github.com/ekristen/cast/releases/download/v0.14.0/cast_v0.14.0_linux_arm64.deb
sudo dpkg -i cast_v0.14.0_linux_arm64.deb
```

**2. Install RAFT with the following command:**

```
cast install kamwoods/raft-states
```

**3. Reboot the system.**

```
sudo reboot
```

## License(s)

This software is distributed under the terms of the MIT License. See the LICENSE file for additional details.

