unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
   code : integer;
   somevar: word;
   tempo : string;


begin
     Val(Edit1.Text,somevar,code);
     asm
     mov AX, SomeVar
     add AX,BX
     mov SomeVar, AX
     end ;
     Str(someVar, tempo) ;
     Edit1.Text := tempo;
end;

end.
