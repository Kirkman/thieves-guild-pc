Thieves' Guild (PC)
===================

What is this?
-------------

This repo contains source code for the PC version of Thieves' Guild, a door game for BBSes. The code has been modified so that it will compile successfully in Turbo Pascal 7.

History
-------

Paul Witte of Mythyn Software created Thieves' Guild for Atari ST BBSes. The Atari version was written in Pascal using OSS's Personal Pascal compiler from 1990-93.

Witte asked Myron Crandall to port Thieves' Guild to the PC. Crandall's version was written in Turbo Pascal. Crandall appears to have completed his port in 1995, and compiled a version for shareware distribution in September 1995. For unknown reasons, though, the PC version was never distributed.

Decades later, Witte sent floppy disks to Josh Renaud, who retrieved the Atari and PC source code in 2020. At that time, Renaud noted that `THIEVES.EXE` for the PC would not run in the DOSBOX emulator. A log file from the floppy disks made it clear that the same errors Renaud saw in 2020 were also occurring in 1995 at the same time the game was originally compiled.

In 2021, Craig Hendricks and Josh Renaud edited the PC source to enable it to compile and run successfully.


How do I try the game?
----------------------

Download the [thieves-guild-pc.zip](thieves-guild-pc.zip) file, which contains the new executables, as well as the original support files and documentation. This ZIP file simulates what Mythyn Software might have distributed in 1995.

If you only want to try the game yourself, you can run it in "local mode" by issuing this command in an emulator or on vintage hardware:

```
THIEVES /L
```

If you want to try hosting the game on a BBS, follow the directions in SYSOP.DOC. 


How do I compile it myself?
---------------------------

You shouldn't attempt to compile this software if you aren't somewhat familiar with MS-DOS, batch files, and Turbo Pascal. You must have Turbo Pascal 7 installed within a DOS emulator like DOSBOX, or on an actual 1990s-vintage computer running MS-DOS. 

1. Clone the repo.

2. Open `SOURCE/1COMPILE.BAT` in a text editor. Edit the `TP` variable so that it contains the path to your Turbo Pascal BIN directory.

3. Copy the repo files to your DOS partititon (whether emulator or genuine hardware).

4. In DOS, change to the `SOURCE` directory.

5. Run `1COMPILE.BAT`. This will build Thieves Guild and its prerequisites.

6. Run `2MAKEREL.BAT`. This will copy the game's executables and necessary files into the `RELEASE/THIEVES/` directory. This directory contains a complete, but unregistered, version of the game. This directory contains the files that would have been zipped and distributed as shareware in 1995.

7. OPTIONAL. Run `3MAKEKEY.BAT`. This will copy the game's key database/generator files into the `RELEASE/KEYGEN/` directory. You can use the `ENCRYPT.EXE` program to create a custom key for your copy of the BBS. The keyfile, `TGBBSREG.CFG`, will need to be copied into `RELEASE/THIEVES/` after generation.

8. OPTIONAL. Run `4CLEANUP.BAT` to clean up the `SOURCE` directory and its subdirectories. This batch script remove all TPU files created during compilation.




