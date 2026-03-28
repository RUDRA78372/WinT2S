unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,SpeechLib_TLB,
  Vcl.ComCtrls, Vcl.ExtDlgs;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    ListBox1: TListBox;
    Panel1: TPanel;
    Button1: TButton;
    TrackBar1: TTrackBar;
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    OpenTextFileDialog1: TOpenTextFileDialog;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
  FVoice: ISpeechVoice;
  Voices: ISpeechObjectTokens;
  
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 if Listbox1.ItemIndex < Voices.Count then
    FVoice.Voice := Voices.Item(Listbox1.ItemIndex);
//    Showmessage(inttostr(Voices.Count)+' '+inttostr(Listbox1.ItemIndex));
if Button1.Caption = 'Stop' then
begin
//FVoice.Pause;
FVoice.Speak('', SVSFPurgeBeforeSpeak);
FVoice := CoSpVoice.Create;
Button1.Caption:='Play';
Button2.Caption:='Pause';
Button2.Enabled:=False;
end
else if Button1.Caption = 'Play' then
begin
//Showmessage(inttostr(FVoice.Status.RunningState));
if FVoice.Status.RunningState  <> SRSEIsSpeaking then
begin
  FVoice.Speak(Memo1.Text, SVSFlagsAsync);
  Button2.Enabled:=True;
  Button1.Caption:='Stop';
  Button2.Caption:='Pause';
end; 
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin

if Button2.Caption ='Resume' then
begin
FVoice.Resume;
Button2.Caption:='Pause';
end
else if Button2.Caption ='Pause' then     
begin
FVoice.Pause;
Button2.Caption:='Resume';
end;

end;


procedure TForm1.Button3Click(Sender: TObject);
begin
if OpenTextFileDialog1.Execute  then
begin
  Memo1.Lines.Clear;
  Memo1.Lines.LoadFromFile(OpenTextFileDialog1.FileName);

end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: Integer;
  Token: ISpeechObjectToken;
begin
OpenTextFileDialog1.Filter := 'Text files (*.txt)|*.TXT|Any file (*.*)|*.*';
FVoice := CoSpVoice.Create;
  Voices := FVoice.GetVoices('', '');
  for i := 0 to Voices.Count - 1 do
  begin
    Token := Voices.Item(i);
    ListBox1.AddItem(Token.GetDescription(0),Sender);
  end;
  ListBox1.ItemIndex:=0;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if (Fvoice.status.RunningState = SRSEDone) and (Button1.Caption='Stop') then
 begin
   Button1.Caption:='Play';
   Button2.Enabled:=False;
 end;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
FVoice.Rate:=TrackBar1.Position;
end;

end.
