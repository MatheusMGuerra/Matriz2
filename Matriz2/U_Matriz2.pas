unit U_Matriz2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edt_endereco: TEdit;
    edt_idade: TEdit;
    edt_peso: TEdit;
    ListBox1: TListBox;
    btn_listar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure btn_listarClick(Sender: TObject);
    function setarArq(z: String): String;
    procedure tratamento(a: String);
    procedure ListBox1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  VAR
    matriz: array of array [0 .. 2] of string;
    x, y: integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn_listarClick(Sender: TObject);
begin
  ListBox1.Items.Clear;
  setarArq(edt_endereco.text);
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  edt_idade.text := matriz[ListBox1.itemindex, 1];
  edt_peso.text := matriz[ListBox1.itemindex, 2];
end;

function TForm1.setarArq(z: String): String;
var
  arq: textfile;
  leitura: String;
begin
  y := - 1;
  AssignFile(arq, z);
  reset(arq);
  while not EoF(arq) do
  begin
    readln(arq, leitura);
    y := y + 1;
    SetLength(matriz, y + 1);
    tratamento(leitura);
    ListBox1.Items.Add(matriz[y, 0]);
  end;
  closefile(arq);
end;

procedure TForm1.tratamento(a: String);
var
  contador, limpa: integer;
  auxiliar: string;
  charac: char;
begin
  contador := 1;
    for contador := 1 to Length(a) do
    begin
      auxiliar := auxiliar + a[contador];
      if contador = 100 then
      begin
        auxiliar := auxiliar;
        x := 0;
        matriz[y][x] := auxiliar;
        auxiliar := '';
      end;
      if contador = 103 then
      begin
        limpa := strtoint(auxiliar);
        x := 1;
        matriz[y][x] := inttostr(limpa);
        auxiliar := '';
      end;
      if contador = 108 then
      begin
        limpa := strtoint(auxiliar);
        x := 2;
        matriz[y][x] := inttostr(limpa);
        auxiliar := '';
      end;
    end;

end;

end.
