unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;


implementation

uses Unit4, Unit5, Unit6, Unit1;

{$R *.dfm}

procedure TForm3.Button2Click(Sender: TObject);
begin
form4.show;
Form4.Mmo1.Lines.Clear;
Form4.Mmo1.Lines.LoadFromFile('теория.txt');
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
form5.show;
Form5.Mmo1.Lines.Clear;
Form5.Mmo1.Lines.LoadFromFile('теория 2.txt');
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
Form3.close;
form6.show;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
Form1.close
end;

end.
