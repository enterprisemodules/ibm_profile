# Changelog

All notable changes to this project will be documented in this file.

## Release 1.5.0

**Maintenance**

- [fixpack] Update for latest version of mq_install

## Release 1.4.0

**Features**


- [iib/mq_machine] Use generic classes for sysctl etc.
- [docs] Add Super powers link to playgrounds


## Release 1.3.0

**Features**

- [release] Add support for puppet 7 in the metadata
- [core] added sensitive groups and users password + password generator

**Bugfixes**

- [mq_machine] Fix deprecation warnings
- [iib_machine] Fix deprecation warnings

## Release 1.2.4

**Bugfixes**

- [iib_machine] Fix used group id. Use same as for MQ

## Release 1.2.3

**Bugfixes**

- [mq_machine] Fix RHEL 8 support
- [core] Convert module to pdk module

## Release 1.2.2

**Bugfixes**

- [software] export the package selector from mq_install
- [quality] Fix mq spec’s on Solaris and MQ
- [release] Fix double dependency Alexcline-dirtree

## Release 1.2.1

**Bugfixes**

- [core] Fix some yaml settings

## Release 1.2.0

**Features**

- [core] Add Solaris support

**Bugfixes**

None


## Release 1.1.0

**Features**

- [release] Add support for RHEL 8 systems
- [core] Add basic AIX support
- [mq_machine] Add support for installing MQ fixpacks

**Bugfixes**

None

## Release 1.0.0

**Features**

- Added the module to our CI

**Bugfixes**

None

## Release 0.5.3

**Features**

None

## Release 0.5.4

**Features**

None

**Bugfixes**

- [mq/authorization_setup] Fix the support for MQ authorizations

## Release 0.5.3

**Features**

None

**Bugfixes**

- [release] Fix README

## Release 0.5.2

**Features**

None

**Bugfixes**

- [release] Fix links in README

## Release 0.5.1

**Features**

None

**Bugfixes**

- Fix README

## Release 0.5.0

**Features**

- [documentation] Add initial documentation
- [broker_setup] Add support for managing iib credentials
- [iib_machine] Add support for server and broker properties

**Bugfixes**

- None

## Release 0.4.0

**Features**

- [mq_machine/software] Use more default settings
- [mq_web] Add support for configuring MQ web
- [mq_machine/software] Add support for MQ 9.1 add-on’s
- [iib_machine] Initial commit

**Bugfixes**

- [messanging_setup] Fix wrong type in messaging setup

## Release 0.3.0

**Features**

- [mq_machine] Add support for standby queue managers

**Bugfixes**

None

## Release 0.2.0

**Features**

- [mq_machine] Add support for channel authorization records
- [mq_machine] Add support for authentication_info and authorization

**Bugfixes**

- [mq_machine] Add parameters for packages


## Release 0.1.0

**Features**

- Install basic MQ systems

**Bugfixes**

None

**Known Issues**

- No good firewall implementation
