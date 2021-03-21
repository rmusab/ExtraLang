unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, RzPanel, RzButton, ImgList, ExtCtrls, ToolWin, ComCtrls,
  RzStatus, StdCtrls, RzCmboBx, OleServer, SpeechLib_TLB, ActiveX, RzLabel,
  RzBckgnd, RzSplit, DBCtrls, RzDBEdit, Grids, DBGrids, DB, RzDBNav, Mask,
  RzEdit, ADODB, RzShellDialogs, RzPrgres, Jpeg, RzTabs, RzListVw, ABSMain,
  FindCompare;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    HalfList: TImageList;
    SpVoice1: TSpVoice;
    Timer2: TTimer;
    Timer1: TTimer;
    ImageList1: TImageList;
    OpenDialog1: TRzOpenDialog;
    SaveDialog1: TRzSaveDialog;
    Timer3: TTimer;
    ImageList: TImageList;
    RzToolbar1: TRzToolbar;
    BtnInsertImage: TRzToolButton;
    BtnCancel: TRzToolButton;
    RzSpacer1: TRzSpacer;
    BtnHelp: TRzToolButton;
    RzToolButton1: TRzToolButton;
    ABSDatabase1: TABSDatabase;
    ABSTable2: TABSTable;
    ABSDatabase2: TABSDatabase;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    WordList: TImageList;
    ABSTable1: TABSTable;
    Timer4: TTimer;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    RzPanel1: TRzPanel;
    RzPanel4: TRzPanel;
    PaintBox1: TPaintBox;
    PaintBox2: TPaintBox;
    RzPanel5: TRzPanel;
    RzDBMemo1: TRzDBMemo;
    RzPanel6: TRzPanel;
    RzPanel7: TRzPanel;
    RzBitBtn6: TRzBitBtn;
    RzBitBtn7: TRzBitBtn;
    RzListView1: TRzListView;
    RzToolbar2: TRzToolbar;
    RzBitBtn1: TRzToolButton;
    RzBitBtn2: TRzToolButton;
    RzBitBtn3: TRzToolButton;
    RzBitBtn4: TRzToolButton;
    RzSpacer2: TRzSpacer;
    RzBitBtn5: TRzToolButton;
    RzPanel3: TRzPanel;
    RzProgressBar1: TRzProgressBar;
    RzProgressBar2: TRzProgressBar;
    RzProgressBar3: TRzProgressBar;
    RzPanel2: TRzPanel;
    RzSizePanel1: TRzSizePanel;
    RzGroupBox3: TRzGroupBox;
    RzMemo2: TRzMemo;
    RzMemo1: TRzMemo;
    RzStatusBar1: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzStatusPane1: TRzStatusPane;
    RzStatusBar2: TRzStatusBar;
    RzStatusPane2: TRzStatusPane;
    RzClockStatus2: TRzClockStatus;
    RzPanel8: TRzPanel;
    RzLabel1: TRzLabel;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Panel: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Image1: TImage;
    procedure N6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpVoice1Viseme(ASender: TObject; StreamNumber: Integer;
      StreamPosition: OleVariant; Duration: Integer; NextVisemeId, Feature,
      CurrentVisemeId: TOleEnum);
    procedure PaintBox1Paint(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure BtnInsertImageClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure RzMemo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer3Timer(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure RzBitBtn5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure BtnHelpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzListView1DblClick(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure RzBitBtn6Click(Sender: TObject);
    procedure RzBitBtn7Click(Sender: TObject);
    procedure RzMemo2Change(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
  private
    { Private declarations }
    procedure SetupMicImages;
  public
    { Public declarations }
    procedure NextQw;
    procedure WordsStart;
    procedure WordStart;
  end;

var
  Form1: TForm1;
  fname,buf,pravs,title: string;
  f: TextFile;
  opened, wrds, wrd: boolean;
  count,i,prav,neprav,pr,min,sec,hours,doom,prv,id,prav2,neprav2: integer;
  SOToken: ISpeechObjectToken;
  jpg: TJPEGImage;
  sred: Double;
  bmp: TBitmap;

implementation
Uses VoiceOp, About, Start;

{$R *.dfm}

const
  Visemes: array[0..21] of Byte = (
   	0,  // SP_VISEME_0 = 0,    // Silence
    6, // SP_VISEME_1,        // AE, AX, AH
    6, // SP_VISEME_2,        // AA
    6, // SP_VISEME_3,        // AO
    4, // SP_VISEME_4,        // EY, EH, UH
    4, // SP_VISEME_5,        // ER
    4,  // SP_VISEME_6,        // y, IY, IH, IX
    2,  // SP_VISEME_7,        // w, UW
    2, // SP_VISEME_8,        // OW
    2,  // SP_VISEME_9,        // AW
    2, // SP_VISEME_10,       // OY
    6, // SP_VISEME_11,       // AY
    4,  // SP_VISEME_12,       // h
    1,  // SP_VISEME_13,       // r
    5,  // SP_VISEME_14,       // l
    1,  // SP_VISEME_15,       // s, z
    1,  // SP_VISEME_16,       // SH, CH, JH, ZH
    1,  // SP_VISEME_17,       // TH, DH
    1,  // SP_VISEME_18,       // f, v
    4,  // SP_VISEME_19,       // d, t, n
    5,  // SP_VISEME_20,       // k, g, NG
    3   // SP_VISEME_21,       // p, b, m
  );

procedure TForm1.SetupMicImages;
var
  Bmp: TBitmap;
  Dir: string;
  jpg: TJPEGImage;
  i: integer;

  procedure LoadHalfBitmap(const FileName: String);
  begin
    jpg.LoadFromFile(FileName);
    bmp.Assign(jpg);
    HalfList.AddMasked(Bmp, Bmp.TransparentColor);
  end;
  procedure LoadImageBitmap(const FileName: String);
  begin
    jpg.LoadFromFile(FileName);
    bmp.Assign(jpg);
    ImageList.AddMasked(Bmp, Bmp.TransparentColor);
  end;

begin
  Bmp := TBitmap.Create;
  jpg := TJPEGImage.Create;
  try
    Dir := ExtractFilePath(Application.ExeName)+'Visual\';
    for i:=1 to 7 do
    LoadImageBitmap(Dir+IntToStr(i)+'_viseme.jpg');
    LoadHalfBitmap(Dir+'Half_Normal.jpg');
    LoadHalfBitmap(Dir+'Half_Blink.jpg');
  finally
    Bmp.Free;
    jpg.Free;
  end
end;

//округление числа до определенной степени
function Rounder(var Value: Double; Decimals: Integer): Double;
var
  j: Integer;
  A: Double;
begin
  A := 1;
  case Decimals of
    0: A := 1;
    1: A := 10;
    else
      for j := 1 to Decimals do
        A := A * 10;
  end;
  Result := Int((Value * A) + 0.5) / A;
end;

procedure TForm1.NextQw;
begin
  if count=0 then begin
    MessageDlg('Число вопросов в файле равно нулю!',mtError,[mbOk],0);
    Exit;
  end;
  if i=count then begin
    CloseFile(F); opened:=false;
    MessageDlg('Урок был успешно закончен! Проверьте свои результаты!',
    mtInformation,[mbOk],0);
    RzMemo1.Clear; RzMemo2.Clear;
    RzMemo1.Lines.Add('Урок был успешно закончен!');
    RzMemo1.Lines.Add('Правильных ответов: '+IntToStr(Prav)+' из '+IntToStr(count));
    RzMemo1.Lines.Add('Неправильных ответов: '+IntToStr(neprav)+' из '+IntToStr(count));
    case Trunc((prav*100)/count) of
    0..39: RzMemo1.Lines.Add('Оценка: 2(плохо)');
    40..59: RzMemo1.Lines.Add('Оценка: 3 (удовлетворительно)');
    60..89: RzMemo1.Lines.Add('Оценка: 4 (хорошо)');
    90..100: RzMemo1.Lines.Add('Оценка: 5 (отлично)');
    end;
    RzMemo1.Lines.Add('Время: '+IntToStr(hours)+' часов, '+IntToStr(min)+
    ' минут, '+IntToStr(sec)+' секунд');
    if (hours>0) and (min>0) and (sec>0) then sred:=(hours*60*60+min*60+sec)/count
    else if (hours=0) and (min>0) and (sec>0) then sred:=(min*60+sec)/count
    else if (hours=0) and (min=0) and (sec>0) then sred:=(sec)/count;
    if sred>0 then RzMemo1.Lines.Add('В среднем '+FloatToStr(Rounder(sred,2))+
    ' секунд на вопрос');
    RzProgressBar1.Percent:=0;
    RzProgressBar2.Percent:=0;
    RzProgressBar3.Percent:=0;
    RzBitBtn2.Enabled := false;
    RzBitBtn3.Enabled := false;
    RzBitBtn1.Enabled := false;
    RzBitBtn4.Enabled := false;
    RzBitBtn5.Enabled := false;
    RzStatusPane1.Caption := '';
    RzLabel1.Caption := '';
   end else begin
    i:=i+1; RzStatusPane1.Caption := 'Вопрос '+IntToStr(i)+' из '+IntToStr(count) +
    '; правильных ответов: '+IntToStr(prav)+
    ', неправильных ответов: '+IntToStr(neprav);
    ReadLn(f,buf); RzMemo1.Lines.Add(buf);
    ReadLn(f,buf); pravs:=buf;
    ReadLn(f,buf);
    RzBitBtn1.Enabled := true;
    RzBitBtn4.Enabled := true;
    RzBitBtn5.Enabled := false;
    RzMemo2.SetFocus;
    RzLabel1.Caption := '';
    pr:=Trunc(i*100/count); RzProgressBar1.Percent:=pr;
    pr:=Trunc(prav*100/count); RzProgressBar2.Percent:=pr;
    pr:=Trunc(neprav*100/count); RzProgressBar3.Percent:=pr;
  end;
end;

//Функция для изменения размера изображения TBitmap
function ResizeBmp(bitmp: TBitmap; wid, hei: Integer): Boolean;
var
  TmpBmp: TBitmap;
  ARect: TRect;
begin
  Result := False;
  try
    TmpBmp := TBitmap.Create;
    try
      TmpBmp.Width  := wid;
      TmpBmp.Height := hei;
      ARect := Rect(0,0, wid, hei);
      TmpBmp.Canvas.StretchDraw(ARect, Bitmp);
      bitmp.Assign(TmpBmp);
    finally
      TmpBmp.Free;
    end;
    Result := True;
  except
    Result := False;
  end;
end;

procedure TForm1.WordsStart;
var
  BlobStream: TStream;
  i:integer;
begin
  Randomize;
  jpg := TJPEGImage.Create;
  bmp := TBitmap.Create;
  RzListView1.Clear;
  prv:=Random(15)+1;
  wrds := true;
  WordList.Clear;
  for i:=1 to 15 do begin
    ABSTable1.Locate('ID',Random(2304)+1,[loCaseInsensitive, loPartialKey]);
    BlobStream := ABSTable1.CreateBlobStream(ABSTable1.FieldByName('JPG'),bmRead);
    jpg.LoadFromStream(BlobStream);
    bmp.Assign(jpg);
    ResizeBmp(bmp,180,180);
    WordList.Add(bmp,nil);
    RzListView1.Items.Add.ImageIndex := WordList.Count-1;
    BlobStream.Free;
    if i=prv then id:=ABSTable1.FieldByName('ID').AsInteger;
  end;
  ABSTable1.Locate('ID',id,[loCaseInsensitive, loPartialKey]);
  BlobStream := ABSTable1.CreateBlobStream(ABSTable1.FieldByName('JPG'),bmRead);
  jpg.LoadFromStream(BlobStream);
  bmp.Assign(jpg);
  ResizeBmp(bmp,180,180);
  BlobStream.Free;
  RzPanel6.Caption := ABSTable1.FieldByName('Word').Text;
  ABSTable2.Locate('synset_id',ABSTable1.FieldByName('synset_id').Text,
  [loCaseInsensitive,loPartialKey]);
  RzStatusPane2.Caption := 'Вопрос №'+IntToStr(prav2+neprav2+1)+
  '; правильных ответов: '+IntToStr(prav2)+'; неправильных ответов: '+
  IntToStr(neprav2);
end;

procedure TForm1.WordStart;
var
  BlobStream: TStream;
  i,ii:integer;
begin
  Randomize;
  jpg := TJPEGImage.Create;
  bmp := TBitmap.Create;
  RzListView1.Clear;
  prv:=Random(5)+1;
  wrd := true;
  for i:=1 to 5 do begin
    ABSTable1.Locate('ID',Random(2304)+1,[loCaseInsensitive, loPartialKey]);
   if i=prv then begin
    id:=ABSTable1.FieldByName('ID').AsInteger;
    for ii:=0 to ComponentCount-1 do
     if Components[ii].Name = 'Panel'+IntToStr(i) then begin
       TPanel(Components[ii]).Caption := ABSTable1.FieldByName('Word').Text;
       RzPanel6.Caption := ABSTable1.FieldByName('Word').Text;
     end;
    BlobStream := ABSTable1.CreateBlobStream(ABSTable1.FieldByName('JPG'),bmRead);
    jpg.LoadFromStream(BlobStream);
    bmp.Assign(jpg);
    ResizeBmp(bmp,180,180);
    Image1.Canvas.Pen.Color := clWindow;
    Image1.Canvas.Brush.Color := clWindow;
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.Draw(Image1.Width div 2 -90,Image1.Height div 2 -90,bmp);
    BlobStream.Free;
   end else begin
    for ii:=0 to ComponentCount-1 do
     if Components[ii].Name = 'Panel'+IntToStr(i) then
      TPanel(Components[ii]).Caption := ABSTable1.FieldByName('Word').Text;
   end;
  end;
  ABSTable1.Locate('ID',id,[loCaseInsensitive, loPartialKey]);
  BlobStream := ABSTable1.CreateBlobStream(ABSTable1.FieldByName('JPG'),bmRead);
  jpg.LoadFromStream(BlobStream);
  bmp.Assign(jpg);
  ResizeBmp(bmp,180,180);
  BlobStream.Free;
  ABSTable2.Locate('synset_id',ABSTable1.FieldByName('synset_id').Text,
  [loCaseInsensitive,loPartialKey]);
  RzStatusPane2.Caption := 'Вопрос №'+IntToStr(prav2+neprav2+1)+
  '; правильных ответов: '+IntToStr(prav2)+'; неправильных ответов: '+
  IntToStr(neprav2);
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormShow(Sender: TObject);
var R : TRect;
    i: Integer;
    SOTokens: ISpeechObjectTokens;
begin
  SystemParametersInfo(SPI_GETWORKAREA, 0, @r,0);
  Form1.SetBounds(r.left, r.top, r.Right - r.left, r.bottom - r.top);
  SetupMicImages;
  SpVoice1.EventInterests := SVEAllEvents;
  SOTokens := SpVoice1.GetVoices('', '');
  for i := 0 to SOTokens.Count - 1 do
  begin
    SOToken := SOTokens.Item(i);
    Form2.RzComboBox1.Items.AddObject(SOToken.GetDescription(0), TObject(SOToken));
    SOToken._AddRef;
  end;
  if Form2.RzComboBox1.Items.Count > 0 then Form2.RzComboBox1.ItemIndex := 0 else begin
  MessageDlg('На вашем компьютере не установлен ни один речевой движок SAPI 5.0!',
  mtError,[mbOK],0); Form2.RzComboBox1.ItemIndex := -1; end;
  /////////////////////////////////////////////////////////////////////////
  Image1.Visible := true;
  Image1.Canvas.Pen.Color := clWindow;
  Image1.Canvas.Brush.Color := clWindow;
  Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
end;

procedure TForm1.SpVoice1Viseme(ASender: TObject; StreamNumber: Integer;
  StreamPosition: OleVariant; Duration: Integer; NextVisemeId, Feature,
  CurrentVisemeId: TOleEnum);
begin
  ImageList.Draw(PaintBox1.Canvas, 0, 0, Visemes[CurrentVisemeId]);
end;

procedure TForm1.PaintBox1Paint(Sender: TObject);
begin
  HalfList.Draw(PaintBox2.Canvas, 0, 0, 0);
  ImageList.Draw(PaintBox1.Canvas, 0, 0, 0);
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  HalfList.Draw(PaintBox2.Canvas, 0, 0, 0);
  Timer2.Enabled := False;
  Timer1.Enabled := True;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  HalfList.Draw(PaintBox2.Canvas, 0, 0, 1);
  Randomize;
  Timer1.Interval := Random(6000);
  Timer2.Enabled := True;
end;

procedure TForm1.RzToolButton1Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.BtnInsertImageClick(Sender: TObject);
begin
  Form4.ShowModal;
end;

procedure TForm1.BtnCancelClick(Sender: TObject);
begin
  if opened = true then begin
    CloseFile(F); opened:=false;
    RzMemo1.Clear; RzMemo2.Clear;
    RzProgressBar1.Percent:=0;
    RzProgressBar2.Percent:=0;
    RzProgressBar3.Percent:=0;
    RzBitBtn2.Enabled := false;
    RzBitBtn3.Enabled := false;
    RzBitBtn1.Enabled := false;
    RzBitBtn4.Enabled := false;
    RzBitBtn5.Enabled := false;
    RzStatusPane1.Caption := '';
    RzLabel1.Caption := '';
    Form1.Caption := 'ExtraLang 2.0';
  end else begin
    RzMemo1.Clear; RzMemo2.Clear;
    Form1.Caption := 'ExtraLang 2.0';
  end;
  if wrds = true then begin
    Timer4.Enabled := false;
    RzBitBtn6.Enabled := false;
    RzBitBtn7.Enabled := false;
    RzDBMemo1.DataSource := nil;
    wrds := false;
    RzListView1.Clear;
    RzPanel6.Caption := '';
    RzListView1.Visible := false;
    Panel.Visible := false;
    Image1.Visible := true;
    Image1.Canvas.Pen.Color := clWindow;
    Image1.Canvas.Brush.Color := clWindow;
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    RzStatusPane2.Caption := '';
  end;
  if wrd = true then begin
    Timer4.Enabled := false;
    RzBitBtn6.Enabled := false;
    RzBitBtn7.Enabled := false;
    RzDBMemo1.DataSource := nil;
    wrd := false;
    RzPanel6.Caption := '';
    RzListView1.Visible := false;
    Panel.Visible := false;
    Image1.Visible := true;
    Image1.Canvas.Pen.Color := clWindow;
    Image1.Canvas.Brush.Color := clWindow;
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    RzStatusPane2.Caption := '';
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if opened then CloseFile(f);
  if wrd then begin bmp.Free; jpg.Free; end;
end;

procedure TForm1.RzBitBtn1Click(Sender: TObject);
begin
  RzBitBtn2.Enabled := true;
  RzBitBtn3.Enabled := true;
  RzBitBtn1.Enabled := false;
  RzBitBtn4.Enabled := false;
  RzBitBtn5.Enabled := true;
  RzMemo1.Lines.Add(pravs);
  RzMemo1.Lines.Add('');
  SpVoice1.Speak(pravs, SVSFlagsAsync);
end;

procedure TForm1.RzBitBtn2Click(Sender: TObject);
begin
  SpVoice1.Disconnect;
  SOToken := ISpeechObjectToken(Pointer(
      Form2.RzComboBox1.Items.Objects[Form2.RzComboBox1.ItemIndex]));
  SpVoice1.Voice := SOToken;
  SpVoice1.Rate := Form2.TrackBar1.Position;
  SpVoice1.Volume := Form2.TrackBar2.Position;
  ImageList.Draw(PaintBox1.Canvas, 0, 0, 0);
  RzBitBtn2.Enabled := false;
  RzBitBtn3.Enabled := false;
  RzBitBtn1.Enabled := true;
  RzBitBtn4.Enabled := true;
  RzMemo2.Clear;
  prav:=prav+1;
  NextQw;
end;

procedure TForm1.RzBitBtn3Click(Sender: TObject);
begin
  SpVoice1.Disconnect;
  SOToken := ISpeechObjectToken(Pointer(
      Form2.RzComboBox1.Items.Objects[Form2.RzComboBox1.ItemIndex]));
  SpVoice1.Voice := SOToken;
  SpVoice1.Rate := Form2.TrackBar1.Position;
  SpVoice1.Volume := Form2.TrackBar2.Position;
  ImageList.Draw(PaintBox1.Canvas, 0, 0, 0);
  RzBitBtn2.Enabled := false;
  RzBitBtn3.Enabled := false;
  RzBitBtn1.Enabled := true;
  RzBitBtn4.Enabled := true;
  RzMemo2.Clear;
  neprav:=neprav+1;
  NextQw;
end;

procedure TForm1.RzMemo2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if opened and (key=112) and (RzBitBtn2.Enabled) and (RzBitBtn3.Enabled) then
  RzBitBtn2.Click else
  if opened and (key=113) and (RzBitBtn2.Enabled) and (RzBitBtn3.Enabled) then
  RzBitBtn3.Click else
  if opened and (key=13) and (RzBitBtn1.Enabled) then RzBitBtn1.Click;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
  if (min=59) and (sec=59) then begin hours:=hours+1; min:=0; sec:=0; end;
  if sec=59 then begin min:=min+1; sec:=0; end;
  sec:=sec+1;
end;

procedure TForm1.RzBitBtn4Click(Sender: TObject);
var fs: textfile; fnames: string; time: _SYSTEMTIME;
begin
  if (opened) and (SaveDialog1.Execute) then begin
    if SaveDialog1.FileName = fname then begin
      MessageDlg('Не могу сохранить файл, потому что он используется другой программой!'
      ,mtInformation,[mbOk],0);
      Exit;
    end;
    RzMemo1.Clear; RzMemo2.Clear;
    RzMemo1.Lines.Add('Прогресс текущего урока был успешно сохранён в файл!');
    RzMemo1.Lines.Add('В любое другое время вы сможете продолжить урок,');
    RzMemo1.Lines.Add('открыв сохранённый файл');
    RzProgressBar1.Percent:=0;
    RzProgressBar2.Percent:=0;
    RzProgressBar3.Percent:=0;
    RzBitBtn2.Enabled := false;
    RzBitBtn3.Enabled := false;
    RzBitBtn1.Enabled := false;
    RzBitBtn4.Enabled := false;
    RzStatusPane1.Caption := '';
    fnames:=SaveDialog1.FileName; AssignFile(fs,fnames);
    GetSystemTime(time);
    Rewrite(fs); WriteLn(fs,title+' - unfinished '+FloatToStr(time.wDay)+'.'+
    FloatToStr(time.wMonth)+'.'+FloatToStr(time.wYear)+' '+FloatToStr(time.wHour)+
    ':'+FloatToStr(time.wMinute)+':'+FloatToStr(time.wSecond));
    WriteLn(fs,IntToStr(count-i)); WriteLn(fs,'');
    while not(EOF(f)) do begin
      ReadLn(f,buf); WriteLn(fs,buf);
      ReadLn(f,buf); WriteLn(fs,buf); ReadLn(f,buf); WriteLn(fs,'');
    end;
    CloseFile(fs); CloseFile(f); opened:=false;
    MessageDlg('Прогресс текущего урока был успешно сохранён в файл!',mtInformation,[mbOk],0);
  end;
end;

procedure TForm1.RzBitBtn5Click(Sender: TObject);
begin
  If (opened) and (Form2.RzComboBox1.ItemIndex > -1) then
  SpVoice1.Speak(pravs, SVSFlagsAsync);
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  BtnInsertImage.Click;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TForm1.BtnHelpClick(Sender: TObject);
begin
  N3.Click;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  wrds:=false; wrd:=false; opened:=false;
end;

procedure TForm1.RzListView1DblClick(Sender: TObject);
begin
  if not wrds then exit;
  if RzListView1.ItemIndex = prv-1 then
  begin
    prav2:=prav2+1;
    RzListView1.Visible := false;
    Image1.Visible := true;
    Image1.Canvas.Pen.Color := clLime;
    Image1.Canvas.Brush.Color := clLime;
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.Draw(Image1.Width div 2 -90,Image1.Height div 2 -90,bmp);
    RzBitBtn6.Enabled := false;
    SpVoice1.Speak(ABSTable1.FieldByName('Word').Text,SVSFlagsAsync);
    Timer4.Enabled := true;
  end else begin
    neprav2:=neprav2+1;
    RzListView1.Visible := false;
    Image1.Visible := true;
    Image1.Canvas.Pen.Color := clRed;
    Image1.Canvas.Brush.Color := clRed;
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.Draw(Image1.Width div 2 -90,Image1.Height div 2 -90,bmp);
    RzBitBtn6.Enabled := false;
    SpVoice1.Speak(ABSTable1.FieldByName('Word').Text,SVSFlagsAsync);
    Timer4.Enabled := true;
  end;
end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
  if wrds = true then begin
    Timer4.Enabled := false;
    RzListView1.Visible := true;
    Image1.Canvas.Pen.Color := clWindow;
    Image1.Canvas.Brush.Color := clWindow;
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Visible := false;
    RzBitBtn6.Enabled := true;
    WordsStart;
  end;
  if wrd = true then begin
    Timer4.Enabled := false;
    Panel.Visible := true;
    Image1.Canvas.Pen.Color := clWindow;
    Image1.Canvas.Brush.Color := clWindow;
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    RzBitBtn6.Enabled := true;
    WordStart;
  end;
end;

procedure TForm1.RzBitBtn6Click(Sender: TObject);
begin
  RzListView1.Visible := false;
  neprav2:=neprav2+1;
  Image1.Visible := true;
  Image1.Canvas.Pen.Color := clRed;
  Image1.Canvas.Brush.Color := clRed;
  Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
  Image1.Canvas.Draw(Image1.Width div 2 -90,Image1.Height div 2 -90,bmp);
  RzBitBtn6.Enabled := false;
  SpVoice1.Speak(ABSTable1.FieldByName('Word').Text,SVSFlagsAsync);
  Timer4.Enabled := true;
end;

procedure TForm1.RzBitBtn7Click(Sender: TObject);
begin
  if wrds = true then wrds := false;
  if wrd = true then wrd := false;
  Timer4.Enabled := false;
  RzBitBtn6.Enabled := false;
  RzBitBtn7.Enabled := false;
  RzDBMemo1.DataSource := nil;
  RzListView1.Clear;
  RzListView1.Visible := false;
  Panel.Visible := false;
  Image1.Visible := true;
  Image1.Canvas.Pen.Color := clWindow;
  Image1.Canvas.Brush.Color := clWindow;
  Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
  RzPanel6.Caption := '';
  RzStatusPane2.Caption := '';
end;

procedure TForm1.RzMemo2Change(Sender: TObject);
begin
  if opened then begin
    RzLabel1.Caption := 'Совпадение - '+IntToStr(IndistinctMatching(4,
    RzMemo2.Text,pravs));
  end;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
  BtnCancel.Click;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
  RzToolButton1.Click;
end;

procedure TForm1.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel1.BevelOuter := bvLowered;
end;

procedure TForm1.Panel1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel1.BevelOuter := bvRaised;
end;

procedure TForm1.Panel2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel2.BevelOuter := bvLowered;
end;

procedure TForm1.Panel2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel2.BevelOuter := bvRaised;
end;

procedure TForm1.Panel3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel3.BevelOuter := bvLowered;
end;

procedure TForm1.Panel3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel3.BevelOuter := bvRaised;
end;

procedure TForm1.Panel4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel4.BevelOuter := bvLowered;
end;

procedure TForm1.Panel4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel4.BevelOuter := bvRaised;
end;

procedure TForm1.Panel5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel5.BevelOuter := bvLowered;
end;

procedure TForm1.Panel5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel5.BevelOuter := bvRaised;
end;

procedure TForm1.Panel1Click(Sender: TObject);
begin
  if Panel1.Caption = ABSTable1.FieldByName('Word').Text then begin
    prav2 := prav2+1;
    RzBitBtn6.Enabled := false;
    Image1.Canvas.Pen.Color := clLime;
    Image1.Canvas.Brush.Color := clLime;
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.Draw(Image1.Width div 2 -90,Image1.Height div 2 -90,bmp);
    SpVoice1.Speak(ABSTable1.FieldByName('Word').Text,SVSFlagsAsync);
    Timer4.Enabled := true;
  end else begin
    neprav2 := neprav2+1;
    RzBitBtn6.Enabled := false;
    Image1.Canvas.Pen.Color := clRed;
    Image1.Canvas.Brush.Color := clRed;
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.Draw(Image1.Width div 2 -90,Image1.Height div 2 -90,bmp);
    SpVoice1.Speak(ABSTable1.FieldByName('Word').Text,SVSFlagsAsync);
    Timer4.Enabled := true;
  end;
end;

procedure TForm1.Panel2Click(Sender: TObject);
begin
  if Panel2.Caption = ABSTable1.FieldByName('Word').Text then begin
    prav2 := prav2+1;
    RzBitBtn6.Enabled := false;
    Image1.Canvas.Pen.Color := clLime;
    Image1.Canvas.Brush.Color := clLime;
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.Draw(Image1.Width div 2 -90,Image1.Height div 2 -90,bmp);
    SpVoice1.Speak(ABSTable1.FieldByName('Word').Text,SVSFlagsAsync);
    Timer4.Enabled := true;
  end else begin
    neprav2 := neprav2+1;
    RzBitBtn6.Enabled := false;
    Image1.Canvas.Pen.Color := clRed;
    Image1.Canvas.Brush.Color := clRed;
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.Draw(Image1.Width div 2 -90,Image1.Height div 2 -90,bmp);
    SpVoice1.Speak(ABSTable1.FieldByName('Word').Text,SVSFlagsAsync);
    Timer4.Enabled := true;
  end;
end;

procedure TForm1.Panel3Click(Sender: TObject);
begin
  if Panel3.Caption = ABSTable1.FieldByName('Word').Text then begin
    prav2 := prav2+1;
    RzBitBtn6.Enabled := false;
    Image1.Canvas.Pen.Color := clLime;
    Image1.Canvas.Brush.Color := clLime;
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.Draw(Image1.Width div 2 -90,Image1.Height div 2 -90,bmp);
    SpVoice1.Speak(ABSTable1.FieldByName('Word').Text,SVSFlagsAsync);
    Timer4.Enabled := true;
  end else begin
    neprav2 := neprav2+1;
    RzBitBtn6.Enabled := false;
    Image1.Canvas.Pen.Color := clRed;
    Image1.Canvas.Brush.Color := clRed;
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.Draw(Image1.Width div 2 -90,Image1.Height div 2 -90,bmp);
    SpVoice1.Speak(ABSTable1.FieldByName('Word').Text,SVSFlagsAsync);
    Timer4.Enabled := true;
  end;
end;

procedure TForm1.Panel4Click(Sender: TObject);
begin
  if Panel4.Caption = ABSTable1.FieldByName('Word').Text then begin
    prav2 := prav2+1;
    RzBitBtn6.Enabled := false;
    Image1.Canvas.Pen.Color := clLime;
    Image1.Canvas.Brush.Color := clLime;
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.Draw(Image1.Width div 2 -90,Image1.Height div 2 -90,bmp);
    SpVoice1.Speak(ABSTable1.FieldByName('Word').Text,SVSFlagsAsync);
    Timer4.Enabled := true;
  end else begin
    neprav2 := neprav2+1;
    RzBitBtn6.Enabled := false;
    Image1.Canvas.Pen.Color := clRed;
    Image1.Canvas.Brush.Color := clRed;
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.Draw(Image1.Width div 2 -90,Image1.Height div 2 -90,bmp);
    SpVoice1.Speak(ABSTable1.FieldByName('Word').Text,SVSFlagsAsync);
    Timer4.Enabled := true;
  end;
end;

procedure TForm1.Panel5Click(Sender: TObject);
begin
  if Panel5.Caption = ABSTable1.FieldByName('Word').Text then begin
    prav2 := prav2+1;
    RzBitBtn6.Enabled := false;
    Image1.Canvas.Pen.Color := clLime;
    Image1.Canvas.Brush.Color := clLime;
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.Draw(Image1.Width div 2 -90,Image1.Height div 2 -90,bmp);
    SpVoice1.Speak(ABSTable1.FieldByName('Word').Text,SVSFlagsAsync);
    Timer4.Enabled := true;
  end else begin
    neprav2 := neprav2+1;
    RzBitBtn6.Enabled := false;
    Image1.Canvas.Pen.Color := clRed;
    Image1.Canvas.Brush.Color := clRed;
    Image1.Canvas.Rectangle(0,0,Image1.Width,Image1.Height);
    Image1.Canvas.Draw(Image1.Width div 2 -90,Image1.Height div 2 -90,bmp);
    SpVoice1.Speak(ABSTable1.FieldByName('Word').Text,SVSFlagsAsync);
    Timer4.Enabled := true;
  end;
end;

end.
