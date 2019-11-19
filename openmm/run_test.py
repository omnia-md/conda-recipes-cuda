#!/usr/bin/env python

from simtk import openmm

# Check major version number
# If Z=0 for version X.Y.Z, out put is "X.Y"
assert openmm.Platform.getOpenMMVersion() == '7.4.1', "openmm.Platform.getOpenMMVersion() = %s" % openmm.Platform.getOpenMMVersion()

# Check git hash
assert openmm.version.git_revision == '989a9912c8281f3f85d1ae89ef492f9a65c70fab', "openmm.version.git_revision = %s" % openmm.version.git_revision
