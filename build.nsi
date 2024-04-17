!include "MUI2.nsh"

!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES
!insertmacro MUI_LANGUAGE "English"

!define NAME "Raiden"
!define APPFILE "raiden.exe"

Name "${NAME}"
Outfile "${NAME} Setup.exe"
InstallDir $PROFILE\raiden
ShowInstDetails show
RequestExecutionLevel user

Section
 	SetOutPath $INSTDIR
	File raiden.exe
	WriteUninstaller $INSTDIR\uninstaller.exe
SectionEnd

Section "Uninstall"
	Delete $INSTDIR\raiden.exe
	Delete $INSTDIR\uninstaller.exe
	RMDir $INSTDIR
SectionEnd
