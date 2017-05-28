# Factorio QuickStart Module

Provides a quick boost to starting resources to avoid early manual labour.

Currently targetting Factorio 0.15.16 (but may work on any 0.15 version). Should be reasonably fail-safe
in the event that any items added don't exist, so should co-exist with most/all mods.

In lieu of configuration or profiles at this stage, it adds:

Item | Quantity
---- | --------
transport-belt | 100
pipe | 100
pipe-to-ground | 50
inserter | 50
wooden-chest | 10
iron-chest | 10
lab | 1
offshore-pump | 2
steam-engine | 20
electric-mining-drill | 4
stone-furnace | 8
assembling-machine-1 | 2
coal | 400
raw-wood | 400
iron-plate | 392
copper-plate | 400
steel-plate | 200
stone | 400
steel-axe | 5
heavy-armor | 1
submachine-gun | 1

## Releases

Version			| Factorio Version	| Download Link
------------	| ----------------	| -------------
1.0.1			| 0.15+				| https://github.com/chfactorio/mod-quickstart/releases/download/v1.0.1/QuickStart_1.0.1.zip

To manually install, copy the above file to your %APPDATA%\Factorio\mods folder, or the corresponding location on Linux/Mac. You
can type %APPDATA% into an Explorer window to navigate to the relevant folder.

## Tasks

Listed below are any tasks that have been completed, or remain to be completed, before a stable version is released:

- [x] Initial proof-of-concept and basic build script.
- [ ] Fix build script for Linux.
- [ ] Allow configuration of the module in-game.
- [ ] Allow publishing to an online repository for ease of use.
- [ ] Provide locale-specific support.

## Building

This module uses the Gradle build tool (http://www.gradle.org) to package the module content. You can use the supplied
gradlew and gradlew.sh commands to perform various build tasks. This will require a JDK installed and available on the path,
though that should be the only requirement. The script will download and install the relevant version of Gradle.

To perform a full build:

```
$ gradlew clean build dist
```

To perform a full build, and install the built archive (only on Windows currently):

```
$ gradlew clean build dist installWindows
```

## Change Log

### 1.0.1

* Fixed issue with space in the module name.

### 1.0.0

* Initial release.