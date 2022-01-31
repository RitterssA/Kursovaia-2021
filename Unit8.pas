unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, jpeg, ExtCtrls;

type
  TForm8 = class(TForm)
    Button1: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Image1: TImage;
    N2: TMenuItem;
    Button2: TButton;
    N3: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
form8.close;
form2.show;
end;

procedure TForm8.N1Click(Sender: TObject);
begin
ShowMessage('Если пользователь хочет выйти из теста или закончить работу с программным продуктом, на каждой форме находится кнопка "Выход"');
end;

procedure TForm8.N2Click(Sender: TObject);
begin
ShowMessage ('Приложение созданно для тестирования пользователей по теме Право или прочтения теории по теме "Семейное право" и "Органы госкдарственной власти"')
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
Form1.close
end;

end.
