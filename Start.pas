unit Start;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, RzPanel, DB, jpeg, StdCtrls, RzLabel,
  RzBorder;

type
  TForm4 = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel4: TRzLabel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzPanel3: TRzPanel;
    RzLabel5: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel8: TRzLabel;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    RzBorder1: TRzBorder;
    RzLabel6: TRzLabel;
    Image1: TImage;
    RzLabel9: TRzLabel;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
Uses Main;

{$R *.dfm}

procedure TForm4.RzBitBtn1Click(Sender: TObject);
begin
  with Form1 do begin
  if OpenDialog1.Execute then begin
   RzMemo1.Clear; RzMemo2.Clear; prav:=0; neprav:=0; i:=0; sred:=0;
   min:=0; sec:=0; hours:=0; Timer1.Enabled := true; doom:=0;
   RzProgressBar1.Percent:=0;
   RzProgressBar2.Percent:=0;
   RzProgressBar3.Percent:=0;
   RzStatusPane1.Caption := '';
   RzBitBtn2.Enabled := false;
   RzBitBtn3.Enabled := false;
   fname := OpenDialog1.FileName;
   AssignFile(f,fname);
   Reset(f); opened:=true;
   ReadLn(f,buf); title:=buf;
   Caption := 'ExtraLang 2.0 - '+title;
   ReadLn(f,buf); count:=StrToInt(buf);
   ReadLn(f,buf);
   Timer3.Enabled := true;
   PageControl1.ActivePage := TabSheet2;
   NextQw;
   Form4.Close;
  end;
  end;
end;

procedure TForm4.RzBitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm4.RzBitBtn2Click(Sender: TObject);
begin
  with Form1 do begin
   prav2:=0; neprav2:=0;
   Panel.Visible := false;
   Image1.Visible := false;
   RzListView1.Visible := true;
   PageControl1.ActivePage := TabSheet1;
   RzBitBtn6.Enabled := true;
   RzBitBtn7.Enabled := true;
   RzDBMemo1.DataSource := DataSource2;
   WordsStart;
   Form4.Close;
  end;
end;

procedure TForm4.RzBitBtn5Click(Sender: TObject);
begin
  with Form1 do begin
   prav2:=0; neprav2:=0;
   RzListView1.Visible := false;
   Panel.Visible := true;
   Image1.Visible := true;
   PageControl1.ActivePage := TabSheet1;
   RzBitBtn6.Enabled := true;
   RzBitBtn7.Enabled := true;
   RzDBMemo1.DataSource := DataSource2;
   WordStart;
   Form4.Close;
  end;
end;

end.
