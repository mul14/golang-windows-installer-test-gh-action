Name "Raiden"
Outfile "installer.exe"

InstallDir $PROFILE\raiden
ShowInstDetails show
RequestExecutionLevel user
Page directory
Page instfiles
UninstPage uninstConfirm
UninstPage instfiles

Section
 	SetOutPath $INSTDIR
	File main.exe
	
	;nsExec::Exec 'setx PATH $INSTDIR;%PATH%'
	StrCpy $0 $INSTDIR
	DetailPrint "$$0" 
	;${EnvVarUpdate} $0 "PATH" "A" "HKCU" 

	WriteUninstaller $INSTDIR\uninstaller.exe
SectionEnd

Section "Uninstall"
	Delete $INSTDIR\main.exe
	Delete $INSTDIR\uninstaller.exe
;	RMDir $INSTDIR
SectionEnd