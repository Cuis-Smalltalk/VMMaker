# VMMaker
Port of Squeak VMMaker to Cuis. For building VM Plugins.

VMMaker is the main package for Cuis, Squeak and Pharo for VM and VM plugin work. It can run the VM code in smalltalk, running a separate Smalltalk image. It can also translate the VM and plugins to C.

This package is in Cuis .pck.st format and started from VMMaker-dtl.422.mcz from http://source.squeak.org/VMMaker.html and http://source.squeak.org/VMMaker/ as a verbatim copy, except for convertion to LF for line endings and removal of a couple of name clashes (method parameter 'breakCount' with same name as instance variable in StackInterpreterSimulator).

It is currently updated up to VMMaker-dtl.422.mcz (please keep this reference updated)