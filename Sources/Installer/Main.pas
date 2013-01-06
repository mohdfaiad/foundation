unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, jpeg,Registry,ShellAPI,inifiles,
  frxpngimage,ShlObj, ActiveX, ComObj;

type
  TfrmMain = class(TForm)
    lbMessage: TLabel;
    gbStat: TGroupBox;
    pBar: TProgressBar;
    Bevel1: TBevel;
    Label1: TLabel;
    btFinish: TButton;
    btCancel: TButton;
    btBack: TButton;
    btNext: TButton;
    gbPath: TGroupBox;
    edPath: TEdit;
    btBrowse: TButton;
    Label2: TLabel;
    PanelTop: TPanel;
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure btCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btNextClick(Sender: TObject);
    procedure btBackClick(Sender: TObject);
    procedure btFinishClick(Sender: TObject);
    procedure btBrowseClick(Sender: TObject);
  private
    { Private declarations }
    AppPath,dstPath:string;
    srcFileList,dstFileList,attrFileList:TStringList;
    step:integer;

    procedure initInstallation;
    procedure initBt(back,next,ok,cancel:boolean);
    procedure initBtE(back,next,ok,cancel:boolean);

    procedure install(step:integer);

    procedure CacheInstall;
    procedure PrepareInstalled(const srcPath, dstPath: String);
    procedure PrepareInstalledFiles(const srcPath, dstPath: String);

    function ProgramFilesDir:string;
    function SystemRoot:string;

    procedure configure;
  public
    { Public declarations }
    ProgFile:string;
  end;

var
  frmMain: TfrmMain;

type
  ShortcutType = (_DESKTOP, _QUICKLAUNCH, _SENDTO, _STARTMENU, _OTHERFOLDER);


const
  MAX_PATH = 2;
  srcDirList: array[0..MAX_PATH] of String =
    ('.\','Files','System');
  //  ('.\','EXCEL', 'Files', 'Reports','System','Fonts');

  INSTALL_PATH='\UIT-Software\Foundation';
  MODULE_NAME='Foundation';

implementation

uses SelectPathForm;

{$R *.dfm}
type
  EFileError = class(Exception);


function GetProgramDir: string;
var
  reg: TRegistry;
begin
  reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_CURRENT_USER;
    reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders', False);
    Result := reg.ReadString('Programs');
    reg.CloseKey;
  finally
    reg.Free;
  end;
end;

function CreateShortcut(SourceFileName,LnkFileName: string; // the file the shortcut points to
                        Location: ShortcutType; // shortcut location
                        SubFolder,  // subfolder of location
                        WorkingDir, // working directory property of the shortcut
                        Parameters,
                        Description: string): //  description property of the shortcut
                        string;
const
  SHELL_FOLDERS_ROOT = 'Software\MicroSoft\Windows\CurrentVersion\Explorer';
  QUICK_LAUNCH_ROOT = 'Software\MicroSoft\Windows\CurrentVersion\GrpConv';
var
  MyObject: IUnknown;
  MySLink: IShellLink;
  MyPFile: IPersistFile;
  Directory, LinkName: string;
  WFileName: WideString;
  Reg: TRegIniFile;
begin

  MyObject := CreateComObject(CLSID_ShellLink);
  MySLink := MyObject as IShellLink;
  MyPFile := MyObject as IPersistFile;

  MySLink.SetPath(PChar(SourceFileName));
  MySLink.SetArguments(PChar(Parameters));
  MySLink.SetDescription(PChar(Description));

  if trim(LnkFileName)<>'' then
    LinkName := ChangeFileExt(LnkFileName, '.lnk')
  else
    LinkName := ChangeFileExt(SourceFileName, '.lnk');

  LinkName := ExtractFileName(LinkName);

  // Quicklauch
  if Location = _QUICKLAUNCH then
  begin
    Reg := TRegIniFile.Create(QUICK_LAUNCH_ROOT);
    try
      Directory := Reg.ReadString('MapGroups', 'Quick Launch', '');
    finally
      Reg.Free;
    end;
  end
  else
  // Other locations
  begin
    Reg := TRegIniFile.Create(SHELL_FOLDERS_ROOT);
    try
    case Location of
      _OTHERFOLDER : Directory := SubFolder;
      _DESKTOP     : Directory := Reg.ReadString('Shell Folders', 'Desktop', '');
      _STARTMENU   : Directory := Reg.ReadString('Shell Folders', 'Start Menu', '');
      _SENDTO      : Directory := Reg.ReadString('Shell Folders', 'SendTo', '');
    end;
    finally
      Reg.Free;
    end;
  end;

  if Directory <> '' then
  begin
    if (SubFolder <> '') and (Location <> _OTHERFOLDER) then
      WFileName := Directory + '\' + SubFolder + '\' + LinkName
    else
      WFileName := Directory + '\' + LinkName;


    if WorkingDir = '' then
      MySLink.SetWorkingDirectory(PChar(ExtractFilePath(SourceFileName)))
    else
      MySLink.SetWorkingDirectory(PChar(WorkingDir));

    MyPFile.Save(PWChar(WFileName), False);
    Result := WFileName;
  end;
end;

{
const
 PROGR = 'c:\YourProgram.exe';
var
  resPath: string;
begin
  //Create a Shortcut in the Quckick launch toolbar
  CreateShortcut(PROGR, _QUICKLAUNCH, '','','','Description');

  //Create a Shortcut on the Desktop
  CreateShortcut(PROGR, _DESKTOP, '','','','Description');

  //Create a Shortcut in the Startmenu /"Programs"-Folder
  resPath := CreateShortcut(PROGR, _OTHERFOLDER, GetProgramDir,'','','Description');
  if resPath <> '' then
  begin
    ShowMessage('Shortcut Successfully created in: ' + resPath);
  end;
end;
}

function WinExit(Flags: Integer): Boolean;
  function SetPrivilege(PrivilegeName: string; Enable: Boolean): Boolean;
  var
    tpPrev,
    tp : TTokenPrivileges;
    token : THandle;
    dwRetLen : DWord;
  begin
    Result := False;
    OpenProcessToken(GetCurrentProcess, TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY, token);
    tp.PrivilegeCount := 1;
    if LookupPrivilegeValue(nil, pchar(PrivilegeName), tp.Privileges[0].LUID) then
    begin
      if Enable then
        tp.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED
      else
        tp.Privileges[0].Attributes := 0;

      dwRetLen := 0;
      Result := AdjustTokenPrivileges(token, False, tp, SizeOf(tpPrev), tpPrev, dwRetLen);
    end;
    CloseHandle(token);
  end;
begin
  if SetPrivilege('SeShutdownPrivilege', True) then
  begin
    ExitWindowsEx(Flags, 0);
    SetPrivilege('SeShutdownPrivilege', False)
  end;
end;

function ExecAndWait(const ExecuteFile, ParamString : string): boolean;
var
  SEInfo: TShellExecuteInfo;
  ExitCode: DWORD;
begin
  FillChar(SEInfo, SizeOf(SEInfo), 0);
  SEInfo.cbSize := SizeOf(TShellExecuteInfo);
  with SEInfo do begin
    fMask := SEE_MASK_NOCLOSEPROCESS;
    Wnd := Application.Handle;
    lpFile := PChar(ExecuteFile);
    lpParameters := PChar(ParamString);
    nShow := SW_HIDE;
  end;
  if ShellExecuteEx(@SEInfo) then
  begin
    repeat
      Application.ProcessMessages;
      GetExitCodeProcess(SEInfo.hProcess, ExitCode);
    until (ExitCode <> STILL_ACTIVE) or Application.Terminated;
    Result:=True;
  end
  else Result:=False;
end;

function FileHasAttr(const FileName: String; const Attr: Word): Boolean;
var A : Integer;
begin
  A := FileGetAttr(FileName);
  Result := (A >= 0) and (A and Attr <> 0);
end;

procedure CopyFileA(const FileName,DestName:string);
begin
end;

procedure CopyFile(const FileName, DestName: String);
var
  CopyBuffer   : Pointer;
  BytesCopied  : Longint;
  Source, Dest : Integer;
  Destination  : TFileName;
const
//  ChunkSize = 8192;
  ChunkSize = 1024;
begin
  Destination := ExpandFileName(DestName);
  if FileHasAttr(Destination, faDirectory) then // if destination is a directory, append file name
    Destination := Destination + '\' + ExtractFileName(FileName);
  GetMem(CopyBuffer, ChunkSize);
  try
    Source := FileOpen(FileName, fmShareDenyWrite);
    if Source < 0 then
      raise EFileError.CreateFmt('Can not open file %s', [FileName]);
    try
      Dest := FileCreate(Destination);
      if Dest < 0 then
        raise EFileError.CreateFmt('Can not create file %s', [Destination]);
      try
        Repeat
          BytesCopied := FileRead(Source, CopyBuffer^, ChunkSize);
          if BytesCopied > 0 then
            FileWrite(Dest, CopyBuffer^, BytesCopied);
        Until BytesCopied < ChunkSize;
      finally
        FileClose(Dest);
      end;
    finally
      FileClose(Source);
    end;
  finally
    FreeMem(CopyBuffer, ChunkSize);
    frmMain.initBt(true,false,true,true);
    frmMain.initbte(false,false,true,false);
  end;
end;

procedure TfrmMain.configure;
var iniF:TIniFile;
begin
  try
     inif:=TIniFile.Create(SystemRoot+'\system32\AS400.conf');
     inif.WriteString('DATABASE','IP','LOCALHOST:'+ dstPath +'\ERP.fdb');
     inif.Free;
  finally
    inif.Free;
  end;
  end;

procedure TfrmMain.install(step:integer);
var i:integer;
    s:string;
begin
  case step of
    0:begin
         lbMessage.Caption :=
            'Welcome to '+MODULE_NAME+' Module Installation. This may be installed an '+MODULE_NAME+' System module '#10#13 +
            ' and setup any value needed by this software.This represents a feature complete build'#10#13 +
            ' of '+MODULE_NAME+' Module. It is the product of many months work by the UIT-Software developer team. '#10#13 +
            ' See the Release Notes document for details of all features and the bug-fixes it contains. '#10#13+
            ''#10#13 +
            ''#10#13 +
            'This installation requires at least 100 Mega-Byte of disk space'#10#13 +
            'It''s strongly recommended more than 200 Mega-Byte of disk space.'+
            #10#13#10#13#10#13+
            'http://www.uitsoftware.com'#10#13+
            'Project Manager : Somsak Kunchanapakorn (ruok191@gmail.com)'#10#13+
            'Software Technical : Jongruk Aripoo (jongruk.a@hotmail.com)'#10#13+
            'Programmer : Sikarin Kumprakob (dvmarcry@gmail.com)'#10#13+
            ''#10#13;

          gbPath.Visible:=false;
          gbStat.Visible:=false;
          initbt(false,true,false,true);
          initbte(false,true,false,true);
      end;
    1:begin
        // init path
         edPath.Text:= ProgramFilesDir+ INSTALL_PATH;
         lbMessage.Caption :=
            'Make it sure you have Microsoft SQL Server  for '+MODULE_NAME+' System '+#10#13 +
            'module and no setup delphi on your computer.'#10#13 + #10#13+#10#13+
            'Please Browse to change install path or Next to continue.'#10#13 +
            //'This represents a feature complete build of ERP Module It is the product '#10#13 +
            //'of many months work by the OpenSoft developer team. See the Release Notes '#10#13+
            //'document for details of all features and the bug-fixes it contains.'#10#13 +
            //''#10#13 +
            //'This installation requires at least 20 Mega-Byte of disk space'#10#13 +
            //'It''s strongly recommended more than 200 Mega-Byte of disk space.';

          //path
          '';
          gbPath.Visible:=true;
          edPath.Enabled:=true;
          btBrowse.Enabled:=true;

          gbStat.Visible:=false;
          initbt(true,true,false,true);
          initbte(true,true,false,false);
      end;
    2:begin
        // prepare
         dstPath:=edPath.Text;
         lbMessage.Caption :=
            'This installation will install '+MODULE_NAME+' System '#10#13 +
            'application module ,drivers  and  Borland package Libraries.'#10#13 + #10#13+#10#13+
            'Please Next to begin install.'#10#13 +
         //   'of many months work by the OpenSoft developer team. See the Release Notes '#10#13+
         //   'document for details of all features and the bug-fixes it contains.'#10#13 +
         //   ''#10#13 +
         //   'This installation requires at least 20 Mega-Byte of disk space'#10#13 +
         //   'It''s strongly recommended more than 200 Mega-Byte of disk space.';
          '';

          gbStat.Visible:=false;

          edPath.Enabled:=false;
          btBrowse.Enabled:=false;

          initbt(true,true,false,true);
          initbte(true,true,false,false);


      end;
    3:begin
        // prepare install
        initbt(true,true,false,true);
        initbte(false,false,false,false);

        gbStat.Caption:='Preparing files list...';
        Application.ProcessMessages;


        for i := 0 to MAX_PATH do
        begin
          srcFileList.Add('Create Installation Path');


          attrFileList.Add('D');

          if ((srcDirList[i] = 'System') or (srcDirList[i] = 'Services')) then
            S := SystemRoot+'\system32'
          else
            S := Trim(dstPath) ;
            dstFileList.Add(S);

          PrepareInstalled(AppPath +'files\'+ srcDirList[i], S);

        end;


        //CacheInstall;

        gbPath.Visible:=false;

        btfinish.Enabled:=false;
        gbStat.Visible:=true;

        pbar.Min := 0;
        pbar.Max := dstFileList.Count;

        // install
        for i := 0 to (dstFileList.Count - 1) do
        begin
          pbar.Position := (i + 1);

          if (attrFileList[i] = 'D') then
          begin
            gbStat.Caption := 'Creating directory ' + dstFileList[i] + '...';
            Application.ProcessMessages();

            ForceDirectories(dstFileList[i])
          end else
          begin
            gbStat.Caption := 'Copying file ' + dstFileList[i] + '...';
            Application.ProcessMessages();
            try
              CopyFile(srcFileList[i], dstFileList[i]);
            except
              initbt(true,false,true,true);
              initbte(false,false,true,false);
            end;
          end;
        end;
        gbStat.Visible:=false;

        gbStat.Caption :='Configure...';

        CreateShortcut(trim(edPath.Text)+'\menu.exe','Rajavithi Foundation', _OTHERFOLDER,GetProgramDir+'\Rajavithi','','','Foundation System');
        CreateShortcut(trim(edPath.Text)+'\menu.exe','Rajavithi Foundation', _DESKTOP, '','','','Foundation System');
        //CreateShortCut(trim(edPath.Text)+'\menu.exe');

        //configure;

        (*

        gbStat.Caption := 'Install Application Server...';

         { Register COM+ objects }
         try
           ExecAndWait(AppPath + 'files\openapp.msi', '');
         except
         end;

         *)
       // Thank you for should OpenSoft ERP System
       lbMessage.Caption :=
          'Thank you for chosen  '+MODULE_NAME+' System by UIT-Software'#10#13+
          'You can visit website to update and find more product.'#10#13#10#13 +
          'http://www.uitsoftware.com'#10#13#10#13#10#13#10#13#10#13#10#13#10#13+
          'Installation Tools by www.bantung.com'#10#13;
          //'document for details of all features and the bug-fixes it contains.'#10#13 +
          //''#10#13 +
          //'This installation requires at least 20 Mega-Byte of disk space'#10#13 +
          //'It''s strongly recommended more than 200 Mega-Byte of disk space.';

        initbt(true,false,true,true);
        initbte(false,false,true,false);

      end;
  end;
end;


procedure TfrmMain.PrepareInstalled(const srcPath, dstPath: String);
type
  TFileAttr = (ftReadOnly, ftHidden, ftSystem, ftVolumeID, ftDirectory,
    ftArchive, ftNormal);
const
   Attributes: array[TFileAttr] of Word = (faReadOnly, faHidden, faSysFile,
     faVolumeID, faDirectory, faArchive, 0);
var
  AttrIndex: TFileAttr;
  AttrWord: Word;
  FileInfo: TSearchRec;
  i:integer;
begin
  AttrWord := DDL_READWRITE;

  for AttrIndex := ftReadOnly to ftArchive do
    AttrWord := AttrWord or Attributes[AttrIndex];

  ChDir(srcPath);

  if (FindFirst('*.*', AttrWord, FileInfo) = 0) then
  begin
    repeat
      if (FileInfo.Name<>'.') and (FileInfo.Name<>'..') then
      begin
        if (FileInfo.Name<>'Files') and (FileInfo.Name<>'System') then
        begin
          srcFileList.Add(srcPath + '\' + FileInfo.Name);
          dstFileList.Add(dstPath + '\' + FileInfo.Name);

          Memo1.Lines.Add(srcPath + '\' + FileInfo.Name);
          Memo2.Lines.Add(dstPath + '\' + FileInfo.Name);
          //Memo1.Lines.Add(dstPath );


          if (FileInfo.Attr = Integer(faDirectory)) then
            attrFileList.Add('D')
          else
            attrFileList.Add('F');
        end;

        if (FileInfo.Attr = Integer(faDirectory)) then
          if FileInfo.Name='Reports' then
            PrepareInstalled(srcPath + '\' + FileInfo.Name, dstPath + '\' + FileInfo.Name);
      end;
    until (FindNext(FileInfo) <> 0);
    FindClose(FileInfo);
  end;
end;

procedure TfrmMain.CacheInstall;
begin
  if not DirectoryExists('.\files') then begin
    Application.MessageBox(pchar('Can''t read files list. Installation halt.'),'Error', MB_OK or MB_ICONSTOP);
    Application.Terminate;
  end else begin

    gbStat.Caption:='Installation Cache...';
    ForceDirectories(SystemRoot+INSTALL_PATH);


  end;
end;

function TfrmMain.ProgramFilesDir:string;
begin
  with TRegistry.Create() do
  try
    RootKey := HKEY_LOCAL_MACHINE;
    if OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion', False) then
    begin
      try
        result:=ReadString('ProgramFilesDir');
      except
      end;

      CloseKey();
    end;
  finally
    Free();
  end;
end;

function TfrmMain.SystemRoot:string;
begin
  with TRegistry.Create() do
  try
    RootKey := HKEY_LOCAL_MACHINE;
    if OpenKey('\SOFTWARE\Microsoft\Windows NT\CurrentVersion', False) then
    begin
      try
        result:=ReadString('SystemRoot');
      except
      end;

      CloseKey();
    end;
  finally
    Free();
  end;
end;

procedure TfrmMain.initBt(back,next,ok,cancel:boolean);
begin
  btBack.Visible:=back;
  btNext.Visible:=next;
  btfinish.Visible:=ok;
  btCancel.Visible:=cancel;
end;

procedure TfrmMain.initBtE(back,next,ok,cancel:boolean);
begin
  btBack.Enabled:=back;
  btNext.Enabled:=next;
  btfinish.Enabled:=ok;
  btCancel.Enabled:=cancel;
end;

procedure TfrmMain.initInstallation;
begin
 // 367 447
//  btBack.Left:=367;
//  btNext.Left:=447;
  gbPath.left:=gbStat.Left;
  gbpath.Top:=gbstat.top;
  gbPath.Visible:=false;
end;

procedure TfrmMain.btCancelClick(Sender: TObject);
begin
     if (Application.MessageBox(PChar(
         ''+MODULE_NAME+' Module Setup is not complete. If you quit now, the program will not be installed.'#10#13 +
         'You may run a Setup pragram agian at anothor time to complete installation.'#10#13 +
         'Would you like to exit Setup?'),
         'Confirm', MB_YESNO or MB_ICONQUESTION) = idYes) then
     Application.Terminate;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  if (Win32Platform <> VER_PLATFORM_WIN32_NT) then
  begin
    Application.MessageBox(
      'This program can only be installed on Windows 2000 family.',
      ''+MODULE_NAME+' System',
      MB_OK or MB_ICONINFORMATION
    );

    Application.Terminate();
  end;

  AppPath := ExtractFilePath(Application.ExeName);

  ProgFile:=ProgramFilesDir;

  srcFileList:=TStringList.Create;
  dstFileList:=TStringList.Create;
  attrFileList:=TStringList.Create;


  step:=0;
  initInstallation;
  install(step);
end;

procedure TfrmMain.btNextClick(Sender: TObject);
begin
 inc(step);
 install(step);
end;

procedure TfrmMain.btBackClick(Sender: TObject);
begin
 dec(step);
 install(step);
end;

procedure TfrmMain.btFinishClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMain.btBrowseClick(Sender: TObject);
begin
  with TfrmSelectPath.Create(Self) do
  try
    if (Trim(edpath.Text) <> '') then
    begin
      if (not DirectoryExists(Trim(edpath.Text))) then
      begin
        if (Application.MessageBox(
                 'Directory does not exists, Do you want to create now?',
                 'Confirm', MB_YESNO or MB_ICONQUESTION) = idYes) then
        begin
          try
            ForceDirectories(Trim(edpath.Text));
            stvBrowse.Path := Trim(edpath.Text);
          except
            stvBrowse.Path := ProgFile;
          end;
        end else
          stvBrowse.Path := ProgFile;
      end else
        stvBrowse.Path := Trim(edpath.Text)
    end else
      stvBrowse.Path := ProgFile;

    ShowModal();
    if (Trim(edpath.Text) = '') then
      edpath.Text := stvBrowse.Path + INSTALL_PATH
    else
      edpath.Text := stvBrowse.Path
  finally
    Free();
  end;
end;
procedure TfrmMain.PrepareInstalledFiles(const srcPath, dstPath: String);
type
  TFileAttr = (ftReadOnly, ftHidden, ftSystem, ftVolumeID, ftDirectory,
    ftArchive, ftNormal);
const
   Attributes: array[TFileAttr] of Word = (faReadOnly, faHidden, faSysFile,
     faVolumeID, faDirectory, faArchive, 0);
var
  AttrIndex: TFileAttr;
  AttrWord: Word;
  FileInfo: TSearchRec;
  i:integer;
begin
  AttrWord := DDL_READWRITE;

  for AttrIndex := ftReadOnly to ftArchive do
    AttrWord := AttrWord or Attributes[AttrIndex];

  ChDir(srcPath);

  if (FindFirst('*.*', AttrWord, FileInfo) = 0) then
  begin
    repeat
      begin
        srcFileList.Add(srcPath + '\' + FileInfo.Name);
        dstFileList.Add(dstPath + '\' + FileInfo.Name);
        Memo1.Lines.Add(dstPath + '\' + FileInfo.Name);

        if (FileInfo.Attr = Integer(faDirectory)) then
          attrFileList.Add('D')
        else
          attrFileList.Add('F');

        if (FileInfo.Attr = Integer(faDirectory)) then
            PrepareInstalled(srcPath + '\' + FileInfo.Name, dstPath + '\' + FileInfo.Name);
      end;
    until (FindNext(FileInfo) <> 0);
    FindClose(FileInfo);
  end;
end;


end.