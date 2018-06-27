# android_device_coolpad_cp3622a

Minimal device tree for building TWRP using CM-12.1 sources.

# Build

Initializing repo
# CM-12.1 source repository
        repo init -u git://github.com/CyanogenMod/android.git -b cm-12.1
    
        repo sync

Or download the compressed CM12.1 source from here: http://forum.xda-developers.com/android/software/sources-android-sources-highly-t3231109
 
Cloning device tree
# First link is the repo for the device tree I cloned (before my mods for cp3622a) which is the soul reason this   # version exists. Thanks for your hard work kirito96!
#        git clone https://github.com/kirito96/android_device_alcatel_8079 8079
# Second link is of to the modded cp3622a tree I made.
#        git clone https://github.com/lehmancurtis147/android_device_coolpad_cp3622a cp3622a
# Make a folder in /devices called (alcatel to use the original device tree and Makefiles) coolpad (if planning to # use the device tree adapted for cp3622a). Then copy the device tree into that (/alcatel|/coolpad) folder         # respectively.

Open the terminal and type sh cm12b to run the build script. 

Enjoy.

Thanks again to kirito96 for laying this foundation!!!
