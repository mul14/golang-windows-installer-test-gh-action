!include "MUI2.nsh"

!insertmacro MUI_PAGE_WELCOME
;!insertmacro MUI_PAGE_DIRECTORY
;!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH
;!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES
!insertmacro MUI_LANGUAGE "English"

!define NAME "Raiden"
!define APPFILE "raiden.exe"

Name "${NAME}"
Outfile "${NAME}Setup.exe"
InstallDir $WINDIR
ShowInstDetails show
RequestExecutionLevel admin

Section
 	SetOutPath $INSTDIR
	File raiden.exe
	WriteUninstaller $INSTDIR\raiden-uninstall.exe
SectionEnd

Section "Uninstall"
	Delete $INSTDIR\raiden.exe
	Delete $INSTDIR\raiden-uninstall.exe
	RMDir $INSTDIR
SectionEnd
