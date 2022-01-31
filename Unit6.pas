unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm6 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    rg1: TRadioGroup;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
   f: text;
s: string;
Nvern, ball: integer;
implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
if (rg1.ItemIndex>-1) and (not Eof(f)) then begin
if rg1.ItemIndex = Nvern-1 then ball:=ball+1; //≈сли выбранный вариант соответствует
rg1.Items.Clear; //номеру верного ответа то балл прибавл€етс€
Repeat //и очищаетс€ поле дл€ следующего вопроса
if (s[1]='-') then begin
delete(s,1,1);
rg1.Caption:=s;
end
else if s[1]='*' then begin
delete(s,1,1);
Nvern:=StrToInt(s);
end
else rg1.Items.Add(s);
readln(f,s);

until (s[1]='-') or (Eof(f));
end
//≈сли конец файла достигнут, значит вопросы закончились
Else if Eof(f) then begin
delete(s,1,1);
Nvern:=StrToInt(s);
if rg1.ItemIndex = Nvern-1 then ball:=ball+1;
Label1.Hide;
Label1.Caption:='¬аша оценка:' + IntToStr(ball); //¬ывод количества баллов
CloseFile(f);
Button1.Enabled:=False; //кнопка становитс€ недоступной в завершении проекта
Button2.Show;
Label1.Show;
end;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
rg1.Enabled:=true;
Button2.Enabled:=False;
Button2.Hide;
Button1.Enabled:=true;
Button2.Hide;
AssignFile(f,'тест гос власть.txt');
reset(f);
readln(f,s);
ball:=0;
repeat
if (s[1]='-') then begin
delete(s,1,1);
rg1.Caption:=s;
end
else
if (s[1]='*') then begin
delete(s,1,1);
Nvern:=StrToInt(s);
end
else
rg1.Items.Add(s);
readln(f,s);
until (s[1]='-') or (EOF(f));
end;

end.
