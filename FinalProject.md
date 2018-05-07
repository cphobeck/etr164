# Final Project

My final project was to create a way to allow two computer users to talk to each other. My initial inspiration for this was to simulate remote radio broadcasting.

## Hardware

  - The Ubuntu machine we configured early in the semester
  - A Raspberry Pi
  - A USB Audio Adapter I bought from [Adafruit](https://www.adafruit.com/product/1475)
  - Two lapel microphones I had at home
  - Two pairs of earbuds I bought at Wal-Mart

![Hardware](https://raw.githubusercontent.com/cphobeck/etr164/Hardware.jpg )

## Software

### First Attempt: Streaming Software

My initial plan was to test installing either the VLC media player (which also has streaming capabilities) or a variant of the Icecast streaming software. Unfortunately, I was not successful in installing either platform to the RPi and getting it to stream.

### Second Attempt: Linphone

My backup idea was to use a VOIP application instead. Even though I was attempting to _duplicate_ VOIP, using such a program would still fulfill the project. I selected linphone as the choice which appeared to be best, due to its wide cross-platform nature. Again, I had a very difficult time getting linphone to install on the RPi. The flatpak instructions given on linphone's site install an older version; even then, the installation attempts to modify GNOME; if I let it do so, Raspbian itself is trashed, and I have to create a clean install of the OS. I found several different sets of instructions on how to compile the most up-to-date code from source, but none of them succeeded on the Raspberry Pi.

When using the older version of linphone, I attempted to connect to another computer, but I receive an error that the program cannot work because it cannot use the port it's configured for, regardless of the protocol. Looking up the error online shows that I should be a member of the "plugdev" permissions group, but my user account already was.

![Port Error](https://raw.githubusercontent.com/cphobeck/etr164/RPi Port Error.png )
![Groups](https://raw.githubusercontent.com/cphobeck/etr164/Groups.png )
