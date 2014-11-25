-- This is a v1.36 for Debug4x that supports 49G+ and 48Gii


-- Emu48.dll v1.35 for Debug4x Version 2.0 --

This is a minor update for the Emu48.dll delivered with the Debug4x 2.0
Versions. Please replace the original DLL with the one from this archive.

The predecessor of Debug4x Version 2.0, the HP49SDK 1v5 Build 136, isn't
supported any more. Use Debug4x instead please.


Tips for configure the Emu48.dll
--------------------------------

First, the Emu48.dll base on the corresponding Emu48.exe version. So it use can
the same infrastructure, that are the KML, the BMP and ROM files. In difference
to older versions, the DLL don't use the Emu48.ini file any more. Emu48.dll save
it settings now under the "HKCU/Software/Hewlett-Packard/Debug4x/Emu48" registry
key. This allows the dividing of the Emu48.exe and Emu48.dll environment. Of
course you're still allowed to use your normal Emu48.exe installation directory
for the Emu48.dll file resources. If Emu48.exe isn't installed, the Emu48.dll
search for the needed KML files in the current directory. You can use all KML
files written for Emu48.exe.

08/31/04 (c) by Christoph Giesselink
