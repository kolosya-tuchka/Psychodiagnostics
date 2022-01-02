unit PW;

interface

uses
  WinApi.Windows, SysUtils, Forms;

function EvaluateKey : string;
function ReadAccessCode : string;
procedure WriteAccessCode(accessCode: string);
function CheckAccessCode(key, accessCode: string) : boolean;

implementation

function EvaluateKey : string;
var
  VolumeName,
  FileSystemName : array [0..MAX_PATH-1] of Char;
  VolumeSerialNo : DWord;
  MaxComponentLength,FileSystemFlags: Cardinal;
begin
  GetVolumeInformation('C:\',VolumeName,MAX_PATH,@VolumeSerialNo, MaxComponentLength, FileSystemFlags, FileSystemName, MAX_PATH);
  result := IntToHex(VolumeSerialNo,10) + '$128CG';
end;

function ReadAccessCode : string;
var
  f: textfile;
  s: string;
begin
  if(FileExists(ExtractFilePath(Application.ExeName) + 'reg.key'))then begin
    AssignFile(f, ExtractFilePath(Application.ExeName) + 'reg.key');
    Reset(f);
    Readln(f, s);
    CloseFile(f);
    result := s;
  end
  else
    result := '';
end;

procedure WriteAccessCode(accessCode: string);
var
  f: textfile;
begin
  AssignFile(f, ExtractFilePath(Application.ExeName) + 'reg.key');
  Rewrite(f);
  Writeln(f, accessCode);
  CloseFile(f);
end;

function CheckAccessCode(key, accessCode: string) : boolean;
var
  i: Integer;
  pr: Integer;
  code, UserCode: String;
begin
  if (Length(key) = 0) or (Length(accessCode) = 0) then
    result := false
  else begin
    for i:=1 to Length(key) do begin
      if(key[i] = '-')then begin
        Delete(key, i, 1);
      end;
    end;
    for i:=1 to Length(key) do begin
      if(key[i] = '') then begin
        Delete(key, i, 1);
      end;
      if(i in [1, 3, 5, 7])then begin
        pr := ord(key[i]) + ord(key[i+1]) - ord('B');
        if( pr > 15 )then begin
          code := code + Format('%1.1X', [(pr - 15)]);
        end;
        if(pr < 15)then begin
          code := code + Format('%1.1X', [pr]);
        end;
      end;
    end;
    UserCode := Copy(accessCode, 1, 4) + Copy(accessCode, 7, 3);
    if UserCode = code then
       result := true
    else
       result := false;
  end;
end;

end.

