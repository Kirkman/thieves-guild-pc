@cls
@echo ------------------------
@echo SET UP RELEASE DIRECTORY

:: Remove previous files from release dir
@echo ... REMOVING OLD FILES
del release\thieves\*.*

:: Copy executables
@echo ... COPYING EXECUTABLES
copy tgedit.exe release\thieves
copy thieves.exe release\thieves

:: Copy supporting files
@echo ... COPYING SUPPORTING FILES
copy rsc_rel\b4uask.doc release\thieves
copy rsc_rel\bugrpt.frm release\thieves
copy rsc_rel\ddset661.zip release\thieves
copy rsc_rel\file_id.diz release\thieves
copy rsc_rel\install.doc release\thieves
copy rsc_rel\register.frm release\thieves
copy rsc_rel\rumours release\thieves
copy rsc_rel\rumours.dat release\thieves
copy rsc_rel\sample.ctl release\thieves
copy rsc_rel\sample1.bat release\thieves
copy rsc_rel\sample2.bat release\thieves
copy rsc_rel\sysop.doc release\thieves
copy rsc_rel\tg_msgs.dat release\thieves
copy rsc_rel\thieves.ans release\thieves
copy rsc_rel\thieves.ctl release\thieves
copy rsc_rel\thieves.doc release\thieves
copy rsc_rel\thieves.scr release\thieves
copy rsc_rel\towns.dat release\thieves
copy rsc_rel\whatsnew.doc release\thieves

:: Create empty DATA directory
mkdir release\thieves\data

:: Finish
@echo ... FINISHED!
@echo The /RELEASE/THIEVES directory has been rebuilt.
