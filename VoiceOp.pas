unit VoiceOp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, RzPanel, RzBckgnd, StdCtrls, RzCmboBx,
  RzLabel, ComCtrls, SpeechLib_TLB, RzEdit;

type
  TForm2 = class(TForm)
    RzGroupBox1: TRzGroupBox;
    TrackBar2: TTrackBar;
    TrackBar1: TTrackBar;
    RzLabel5: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel2: TRzLabel;
    RzBitBtn1: TRzBitBtn;
    RzGroupBox2: TRzGroupBox;
    RzMemo1: TRzMemo;
    RzBitBtn3: TRzBitBtn;
    RzLabel1: TRzLabel;
    RzComboBox1: TRzComboBox;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure RzComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
Uses Main;

{$R *.dfm}

procedure TForm2.RzBitBtn1Click(Sender: TObject);
begin
  if RzMemo1.Lines.Text <> '' then
  Form1.SpVoice1.Speak(RzMemo1.Lines.Text,SVSFlagsAsync);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  RzLabel2.Caption := IntToStr(TrackBar1.Position);
  RzLabel5.Caption := IntToStr(TrackBar2.Position);
end;

procedure TForm2.TrackBar1Change(Sender: TObject);
begin
  Form1.SpVoice1.Skip('Sentence', MaxInt);
  Form1.SpVoice1.Rate := TrackBar1.Position;
  RzLabel2.Caption := IntToStr(TrackBar1.Position);
end;

procedure TForm2.TrackBar2Change(Sender: TObject);
begin
  Form1.SpVoice1.Skip('Sentence', MaxInt);
  Form1.SpVoice1.Volume := TrackBar2.Position;
  RzLabel5.Caption := IntToStr(TrackBar2.Position);
end;

procedure TForm2.RzBitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm2.RzComboBox1Change(Sender: TObject);
var
  SOToken: ISpeechObjectToken;
begin
  SOToken := ISpeechObjectToken(Pointer(
      RzComboBox1.Items.Objects[RzComboBox1.ItemIndex]));
    Form1.SpVoice1.Voice := SOToken;
end;

end.
