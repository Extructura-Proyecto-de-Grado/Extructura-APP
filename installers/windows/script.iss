; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Extructura"
#define MyAppVersion "1.0"
#define MyAppPublisher "Ignacio Montaldi"
#define MyAppURL "https://github.com/ignacio-montaldi"
#define MyAppExeName "extructura_app.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{A40884A1-D3C3-4D64-A32B-F83CA20BD009}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Users\javie\Documents\GitHub\extructura_app\installers
OutputBaseFilename=mysetup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\javie\Documents\GitHub\extructura_app\build\windows\runner\Release\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\javie\Documents\GitHub\extructura_app\build\windows\runner\Release\file_selector_windows_plugin.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\javie\Documents\GitHub\extructura_app\build\windows\runner\Release\flutter_twain_scanner_plugin.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\javie\Documents\GitHub\extructura_app\build\windows\runner\Release\flutter_windows.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\javie\Documents\GitHub\extructura_app\build\windows\runner\Release\FreeImage.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\javie\Documents\GitHub\extructura_app\build\windows\runner\Release\pdfium.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\javie\Documents\GitHub\extructura_app\build\windows\runner\Release\pdfx_plugin.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\javie\Documents\GitHub\extructura_app\build\windows\runner\Release\permission_handler_windows_plugin.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\javie\Documents\GitHub\extructura_app\build\windows\runner\Release\quick_scanner_plugin.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\javie\Documents\GitHub\extructura_app\build\windows\runner\Release\screen_retriever_plugin.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\javie\Documents\GitHub\extructura_app\build\windows\runner\Release\TWAINDSM.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\javie\Documents\GitHub\extructura_app\build\windows\runner\Release\window_manager_plugin.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\javie\Documents\GitHub\extructura_app\build\windows\runner\Release\window_size_plugin.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\javie\Documents\GitHub\extructura_app\build\windows\runner\Release\data\*"; DestDir: "{app}\data"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

