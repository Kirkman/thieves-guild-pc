:: ##############################################
::
:: IMPORTANT -- USER EDITING REQUIRED HERE
::
:: Set the TP variable to the BIN directory
:: of your own Turbo Pascal 7 install.
::
@set TP=D:\TP\BIN\
::
:: (User editing not required below this line)
::
:: ##############################################



:: MANIPULATE THE PATH
:: ===================

:: Save original PATH, then add TP directory to PATH.
@set OLDPATH=%PATH%
@path %PATH%;%TP%


:: COMPILE EXTERNAL DEPENDENCIES
:: =============================

:: Compile DDPLUS
@cls
@echo COMPILING DDPLUS
@cd units\ddplus71
@TPC -B DDPLUS.PAS

:: Compile NETFILEP
@cd ..\netfilep
@echo ------------------
@echo COMPILING NETFILEP
@TPC -U..\ddplus71 NETFILEP.PAS


:: COMPILE THIEVES GUILD FILES
:: ===========================

:: Return to Thieves Guild directory
@cd ..\..

:: Compile Thieves Guild game
@echo -----------------
@echo COMPILING THIEVES
@TPC -Uunits\ddplus71;units\netfilep -L -M THIEVES.PAS

:: Compile Thieves Guild editor
@echo ----------------
@echo COMPILING TGEDIT
@TPC -Uunits\ddplus71;units\netfilep -L -M TGEDIT.PAS

:: Compile Thieves Guild database/key generator
@echo -----------------
@echo COMPILING ENCRYPT
@TPC -Uunits\ddplus71;units\netfilep -L -M ENCRYPT.PAS


:: CLEAN UP
:: ========

:: Restore the original PATH.
@path %OLDPATH%

:: All done
@echo ===================
@echo FINISHED COMPILING!


