program ProjectMatriz2;

uses
  Vcl.Forms,
  U_Matriz2 in 'U_Matriz2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
