# VerifySketchConfig
A tool to verify all configurations of Arduino library examples

To download. click the "Download ZIP" button on the right side of this page. Rename the uncompressed folder "VerifySketchConfig".

```
# A script to verify all example sketches using the Arduino
# command line --verify option.
#
# Also has support for the W&L sketch reconfiguration system.
# This allows us to have multiple ways to run a sketch, like with
# a Bricktronics Shield, Bricktronics Megashield, and a breakout board.
#
# Conceptually, there are multiple config sets numbered 1 - N. Each config set
# can be one or more blocks within the code. Each config block looks like:
# // Config 1 - WNLCFGBS
# // Code that is commented-out
# // More lines of commented-out code
# // Config end
# (Ignore the leading "# " on the four lines above.)
#
# This script will parse the sketch file and determine how many config sets
# are present in the file. Then it will iterate through each config set,
# make modifications to the file (remove leading spaces and "// " on lines in
# the current config set's block(s) ), and then verify with Arduino.
# Text after the hyphen is interpreted as a ConfigType, and used to look up
# in the code what to pass as arguments to Arduino's --board param:
#
# We read in the specified ino file, make modification, and write it back out,
# to the same file. This avoid issues with relative paths and stuff like that.
#
# Usage: VerifySketchConfig.py [/path/to/arduino]
# Iterates through ./examples/* to build them all, so call it from your
#     Arduino library's top-level directory. It looks in ./examples/* for
#     files ending in .ino.
# You can optionally specify the path to your arduino executable.
#
# Written by Matthew Beckler and Adam Wolf, for Wayne and Layne, LLC.
# Released under terms of the GPL version 2.
# Contact us if you want to discuss alternate licenses.
# http://wayneandlayne.com/
```

