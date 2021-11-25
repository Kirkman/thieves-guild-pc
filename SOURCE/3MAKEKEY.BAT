@cls
@echo -----------------------
@echo SET UP KEYGEN DIRECTORY

:: Remove previous files from release dir
@echo ... REMOVING OLD FILES
del release\keygen\*.*

:: Copy executables
@echo ... COPYING EXECUTABLES
copy encrypt.exe release\keygen

:: Copy supporting files
@echo ... COPYING SUPPORTING FILES
copy rsc_key\database.dat release\keygen
::copy rsc_key\tgbbsreg.cfg release\keygen
::copy rsc_key\tgbbsreg.gfc release\keygen

:: Finish
@echo ... FINISHED!
@echo The /RELEASE/KEYGEN directory has been rebuilt.

