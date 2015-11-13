; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[CustomMessages]
Version=MU Terminal (�cretsiz Com Terminal Program� / Freeware Com Port Terminal Program)

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{DAE254E3-E061-4D87-8EDE-0AC1199D7D95}
AppName=MUTerm
AppVerName={cm:Version}
AppPublisher=Mehmet Ulukaya
AppPublisherURL=http://mehmetulukaya.wordpress.com
AppSupportURL=http://mehmetulukaya.wordpress.com
AppUpdatesURL=http://mehmetulukaya.wordpress.com
DefaultDirName={pf}\MUTerm
DefaultGroupName=MuTerm
OutputBaseFilename=muterm-setup
Compression=lzma
SolidCompression=yes
ShowLanguageDialog=yes
ShowUndisplayableLanguages=yes
; For windows warnings...
PrivilegesRequired=poweruser


[Languages]
Name: "English"; MessagesFile: "compiler:Default.isl"
;Name: "Turkce"; MessagesFile: "compiler:Languages\Turkce.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\MUTerm.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\*.ttf"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\simple_modbus.scp"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\simple_tcp_connection.scp"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\MUTerm"; Filename: "{app}\MuTerm.exe"; WorkingDir: "{app}"; Comment: {cm:Version};
Name: "{group}\{cm:UninstallProgram,MUTerm}"; Filename: "{uninstallexe}"; Comment: "MUTerm Uninstall";
Name: "{commondesktop}\MUTerm"; Filename: "{app}\MUTerm.exe"; Tasks: desktopicon; WorkingDir: "{app}"; Comment: {cm:Version};

[Run]
Filename: "{app}\MUTerm.exe"; Description: "{cm:LaunchProgram,MUTerm}"; Flags: nowait postinstall skipifsilent


