MilkyTracker v0.90.86 PAX
==============================

***Beware: this modification is not done properly and might annoy anyone with real programming knowledge***

MilkyTracker v0.90.86 fork with necessary modifications for PAX terminals. Includes a crosscompile helper for CMake, includes backported CMake build system files and is heavily hardcoded, please take your time to change paths accordingly.

Uses keypad for controls (currently only X to exit) and touchscreen for UI interaction.

Build info:
* requires correctly set paths to arm-2012.03 toolchain
* `mkdir build`
* `cd build`
* `cmake -DCMAKE_TOOLCHAIN_FILE=../armcross.cmake ..`
* `make`

and pushing:
* `python3 <prolin-xcb-client/client.py> <tty> push src/tracker/libmilkytracker.so /data/app/MAINAPP/lib/libosal.so`
* `python3 <prolin-xcb-client/client.py> <tty> push src/milkyplay/libmilkyplay.so /data/app/MAINAPP/lib/libmilkyplay.so`
* `python3 <prolin-xcb-client/client.py> <tty> push src/ppui/libppui.so /data/app/MAINAPP/lib/libppui.so`



Notes on building MilkyTracker
==============================

If you have obtained the MilkyTracker sources from the version control
repository, the autotools generated files (INSTALL, configure, etc) will
be missing. To obtain these either generate them using 'autoreconf -i'
(requires autoconf/automake to be installed) or obtain them from the
release package.

See INSTALL for a more general explanation of how 'configure' works.

The configure scripts try to check for everything needed, and will also
auto-detect ALSA and JACK adding support automatically; However, this
behaviour can be over-ridden using the following arguments to configure:

 --with-alsa | --with-jack
   Force build to use alsa/jack, build will fail if not found.
 --without-alsa | --without-jack
   Disable alsa/jack support.

Note that the configure scripts plus associated Makefiles are designed
to build the SDL version of MilkyTracker only. Build files for other
targets (OSX, win32, wince) can be found in the 'platforms' directory.


Dependencies
============

To build MilkyTracker you will need the following development libraries:

ALSA (optional)
JACK (optional)
SDL
libz

Note to package maintainers: MilkyTracker contains an internal copy of
libzzip that has been modified for use with MilkyTracker; An externally
linked libzzip will not work correctly (ZIP support will be broken).
