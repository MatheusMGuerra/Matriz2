object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 233
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 373
    Top = 76
    Width = 40
    Height = 19
    Caption = 'Idade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 373
    Top = 138
    Width = 33
    Height = 19
    Caption = 'Peso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt_endereco: TEdit
    Left = 32
    Top = 24
    Width = 313
    Height = 21
    TabOrder = 0
    Text = 
      'C:\Users\matheus\Documents\Embarcadero\Studio\Projects\alunos fi' +
      'xos.txt'
  end
  object edt_idade: TEdit
    Left = 373
    Top = 101
    Width = 76
    Height = 21
    TabOrder = 1
  end
  object edt_peso: TEdit
    Left = 373
    Top = 163
    Width = 76
    Height = 21
    TabOrder = 2
  end
  object ListBox1: TListBox
    Left = 32
    Top = 64
    Width = 329
    Height = 145
    ItemHeight = 13
    TabOrder = 3
    OnClick = ListBox1Click
  end
  object btn_listar: TButton
    Left = 366
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Listar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btn_listarClick
  end
end
