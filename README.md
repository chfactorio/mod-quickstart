# Factorio Quick Start Module

Currently targetting Factorio 0.15.5.

Provides a quick boost to starting resources to avoid early manual labour.

## Building

This module uses the gradle build tool to package the various LUA scripts and data. You can use the supplied
gradlew and gradlew.sh commands to perform various build tasks.

To perform a full build:

```
$ gradlew clean build dist
```

To perform a full build, and install the built archive (only on Windows currently):

```
$ gradlew clean build dist installWindows
```

## Tasks

Listed below are any tasks that have been completed, or remain to be completed, before a stable version is released:

- [x] Initial proof-of-concept and basic build script.
- [ ] Fix build script for Linux.
- [ ] Allow configuration of the module in-game.
- [ ] Allow publishing to an online repository for ease of use.
- [ ] Provide locale-specific support.
