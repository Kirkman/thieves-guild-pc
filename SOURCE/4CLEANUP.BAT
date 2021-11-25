@cls
@echo ------------------
@echo CLEAN UP TPU FILES
@echo ------------------
@echo This utility script removes any TPU files in the SOURCE or UNITS 
@echo directories. This script will not delete other file types. 
@echo But use caution!

:: Prompt user. Skip to end 
@CHOICE "Do you really want to proceed?"
@IF ERRORLEVEL 2 GOTO end

:: Remove previous files from release dir
@echo ... REMOVING TPUs IN SOURCE
@del *.tpu

:: Remove previous files from release dir
@echo ... REMOVING TPUs IN UNITS
@del units\DDPLUS71\*.tpu
@del units\NETFILEP\*.tpu

:: Finish
@echo ... FINISHED!

:end
