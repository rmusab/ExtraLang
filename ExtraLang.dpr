program ExtraLang;

uses
  Forms,
  Main in 'Main.pas' {Form1},
  VoiceOp in 'VoiceOp.pas' {Form2},
  About in 'About.pas' {Form3},
  Start in 'Start.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
