#!/usr/bin/env python

from simtk import openmm

# Check major version number
# If Z=0 for version X.Y.Z, out put is "X.Y"
assert openmm.Platform.getOpenMMVersion() == '7.4.2', "openmm.Platform.getOpenMMVersion() = %s" % openmm.Platform.getOpenMMVersion()

# Check git hash
assert openmm.version.git_revision == 'dc9d188939ad630d240e89806b185061f7cd661a', "openmm.version.git_revision = %s" % openmm.version.git_revision
