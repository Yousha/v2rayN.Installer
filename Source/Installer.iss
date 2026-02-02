; Ensure minimum Inno Setup version.
#if VER < EncodeVer(6,0,0)
  #error Update your Inno Setup version. (6.0.0 or newer)
#endif

#define APPLICATION_NAME "v2rayN"
#define APPLICATION_DESCRIPTION "A V2Ray client for Windows, support Xray, v2ray and clash cores."
#define APPLICATION_VERSION "7.17.3.0"
#define APPLICATION_ARCHITECTURE "64bit"
#define APPLICATION_PRODUCER "Project V"
#define APPLICATION_COPYRIGHT "Copyright (c) 2026 Project V."
#define APPLICATION_CONTACT "v2ray@protonmail.com"
#define APPLICATION_LINK "https://github.com/2dust/v2rayN"

[Setup]
; NOTE: The value of `AppId` uniquely identifies this application. Do not use the same `AppId` value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{4D3B87F3-C62D-4B78-83F8-ABE83815E2F2}}
AppName={#APPLICATION_NAME}
AppVersion={#APPLICATION_VERSION}
; This directive specifies the name of the application plus its version number. The value of this directive is displayed on the welcome page of setup's wizard,
; and is used as the default title of the application's Add/Remove Programs entry (see UninstallDisplayName). The value may include constants.
AppVerName={#APPLICATION_NAME}
AppPublisher={#APPLICATION_PRODUCER}
AppCopyright={#APPLICATION_COPYRIGHT}
AppContact={#APPLICATION_CONTACT}
AppPublisherURL={#APPLICATION_LINK}
AppSupportURL={#APPLICATION_LINK}
AppUpdatesURL={#APPLICATION_LINK}

DefaultDirName={autopf}\{#APPLICATION_PRODUCER}\{#APPLICATION_NAME}
OutputDir=..\Artifacts
OutputBaseFilename="{#APPLICATION_NAME} {#APPLICATION_VERSION} {#APPLICATION_ARCHITECTURE} installer"
DirExistsWarning=yes
EnableDirDoesntExistWarning=no

DefaultGroupName={#APPLICATION_NAME}
DisableProgramGroupPage=auto
AllowNoIcons=yes

VersionInfoDescription={#APPLICATION_NAME}: {#APPLICATION_DESCRIPTION}
VersionInfoProductName={#APPLICATION_NAME}
VersionInfoOriginalFileName={#APPLICATION_NAME} {#APPLICATION_VERSION} {#APPLICATION_ARCHITECTURE} installer.exe
VersionInfoCompany={#APPLICATION_PRODUCER}
VersionInfoVersion={#APPLICATION_VERSION}
VersionInfoProductVersion={#APPLICATION_VERSION}
VersionInfoProductTextVersion={#APPLICATION_VERSION}
VersionInfoTextVersion={#APPLICATION_VERSION}
VersionInfoCopyright={#APPLICATION_COPYRIGHT}

PrivilegesRequired=admin
PrivilegesRequiredOverridesAllowed=commandline

Compression=lzma
SolidCompression=yes

UninstallDisplayIcon="{app}\{#APPLICATION_NAME}.exe"
UninstallDisplayName={#APPLICATION_PRODUCER} {#APPLICATION_NAME}
Uninstallable=yes

ArchitecturesAllowed=x86compatible and x64compatible
ArchitecturesInstallIn64BitMode=

UsePreviousSetupType=yes
UsePreviousTasks=yes
UsePreviousLanguage=yes
UsePreviousAppDir=yes
RestartIfNeededByRun=no
RestartApplications=no
CloseApplications=yes
DisableWelcomePage=no
DisableFinishedPage=no
DisableDirPage=auto

WizardStyle=classic
WizardResizable=no

DefaultDialogFontName=Tahoma
DisableStartupPrompt=yes
ShowLanguageDialog=no
; `6.1sp1` == Windows 7
MinVersion=6.1sp1
; The `[Icons] "quicklaunchicon"` entry uses `{userappdata}` but its `[Tasks]` entry has a proper `IsAdminInstallMode` Check.
UsedUserAreasWarning=no
AlwaysShowDirOnReadyPage=yes
; Tell Windows Explorer to reload the environment variables.
ChangesEnvironment=no

[LangOptions]
RightToLeft=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Components]
; No individual components.

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; Check: not IsAdminInstallMode

[Files]
Source: "Files\*"; DestDir: "{app}"; Excludes: ".gitkeep"; Flags: {#APPLICATION_ARCHITECTURE} ignoreversion recursesubdirs createallsubdirs uninsremovereadonly
; NOTE: Don't use `Flags: ignoreversion` on any shared system files.

[Icons]
Name: "{autoprograms}\{#APPLICATION_NAME}"; Filename: "{app}\{#APPLICATION_NAME}.exe"; WorkingDir: "{app}"; Comment: "{#APPLICATION_DESCRIPTION}"
; Startmenu shortcut with folder.
;Name: "{group}\{#APPLICATION_NAME}"; Filename: "{app}\{#APPLICATION_NAME}.exe"; WorkingDir: "{app}"; Comment: "{#APPLICATION_DESCRIPTION}"
;Name: "{group}\{cm:UninstallProgram,{#APPLICATION_NAME}}"; Filename: "{uninstallexe}"; WorkingDir: "{app}"; Comment: "{#APPLICATION_DESCRIPTION}"
Name: "{autodesktop}\{#APPLICATION_NAME}"; Filename: "{app}\{#APPLICATION_NAME}.exe"; WorkingDir: "{app}"; Comment: "{#APPLICATION_DESCRIPTION}"; Tasks: desktopicon

[Icons]
Name: "{autoprograms}\{#APPLICATION_NAME}"; Filename: "{app}\{#APPLICATION_NAME}.exe"; WorkingDir: "{app}"; Comment: "{#APPLICATION_DESCRIPTION}"
; Startmenu shortcut with folder.
;Name: "{group}\{#APPLICATION_NAME}"; Filename: "{app}\{#APPLICATION_NAME}.exe"; WorkingDir: "{app}"; Comment: "{#APPLICATION_DESCRIPTION}"
;Name: "{group}\{cm:UninstallProgram,{#APPLICATION_NAME}}"; Filename: "{uninstallexe}"; WorkingDir: "{app}"; Comment: "{#APPLICATION_DESCRIPTION}"
Name: "{autodesktop}\{#APPLICATION_NAME}"; Filename: "{app}\{#APPLICATION_NAME}.exe"; WorkingDir: "{app}"; Comment: "{#APPLICATION_DESCRIPTION}"; Tasks: desktopicon

[UninstallDelete]
Type: filesandordirs; Name: "{localappdata}\{#APPLICATION_PRODUCER}\{#APPLICATION_NAME}"
Type: filesandordirs; Name: "{commonappdata}\{#APPLICATION_PRODUCER}\{#APPLICATION_NAME}"
Type: filesandordirs; Name: "{app}"
