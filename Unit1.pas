unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    pb1: TProgressBar;
    tmr1: TTimer;
    Image1: TImage;
    procedure tmr1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit7, Unit8;

{$R *.dfm}

procedure TForm1.tmr1Timer(Sender: TObject);
begin
begin
pb1.Position:=pb1.Position+30;
If (pb1.Position=pb1.Max) Then
begin
form8.Show;
Form1.Hide;
tmr1.Enabled:=False;
end;
end;
end;

end.
