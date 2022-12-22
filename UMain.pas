unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Win.ScktComp, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    ServerSocket1: TServerSocket;
    ClientSocket1: TClientSocket;
    Label8: TLabel;
    GpConfig: TGridPanel;
    GbClientCfg: TGroupBox;
    GbServerCfg: TGroupBox;
    GpClientCfgIpts: TGridPanel;
    Label1: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    GpClientCfgBtns: TGridPanel;
    Button2: TButton;
    Button4: TButton;
    GpServerCfgIpts: TGridPanel;
    Label2: TLabel;
    Edit2: TEdit;
    GpServerCfgBtns: TGridPanel;
    Button1: TButton;
    Button3: TButton;
    GpMessages: TGridPanel;
    GbServerMsg: TGroupBox;
    GpServerMsgBtns: TGridPanel;
    GbClientMsg: TGroupBox;
    GpClientMsgBtns: TGridPanel;
    Edit4: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Button5: TButton;
    Button6: TButton;
    GbLog: TGroupBox;
    GpLog: TGridPanel;
    Memo1: TMemo;
    GridPanel1: TGridPanel;
    Button7: TButton;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    GpServerMsgCfg: TGridPanel;
    Edit5: TEdit;
    CheckBox5: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure ServerSocket1ClientRead(Sender: TObject;Socket: TCustomWinSocket);
    procedure ServerSocket1ClientConnect(Sender: TObject;Socket: TCustomWinSocket);
    procedure ServerSocket1Listen(Sender: TObject; Socket: TCustomWinSocket);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ServerSocket1ClientDisconnect(Sender: TObject;Socket: TCustomWinSocket);
    procedure ServerSocket1ClientError(Sender: TObject;Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;var ErrorCode: Integer);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ClientSocket1Connect(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocket1Disconnect(Sender: TObject;Socket: TCustomWinSocket);
    procedure ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket;ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure ClientSocket1Connecting(Sender: TObject;Socket: TCustomWinSocket);
  private
    Cliente: TCustomWinSocket;

    procedure EscreveLog(Msg: String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

const
  CR = #13;
  LF = #10;
  CRLF = CR + LF;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if Edit2.Text = '' then begin
    ShowMessage('Informe uma porta o servidor ouvir');
    Exit;
  end;

  try
    ServerSocket1.Port := StrToInt(Edit2.Text);
    ServerSocket1.Active := True;

    Button1.Enabled := False;
    Button3.Enabled := True;
  except on E:Exception do begin
    EscreveLog('Servidor -> Problemas ao inicializar: ' + E.Message);
  end;
  end;
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
  if Edit3.Text = '' then begin
    ShowMessage('Informe uma porta para conexão');
    Exit;
  end;

  if Edit1.Text = '' then Edit1.Text := '127.0.0.1';

  ClientSocket1.Address := Edit1.Text;
  ClientSocket1.Host := Edit1.Text;
  ClientSocket1.Port := StrToInt(Edit3.Text);

  try
    ClientSocket1.Active := True;

    Button2.Enabled := False;
    Button4.Enabled := True;
  except on E:Exception do begin
    EscreveLog('Cliente -> Não foi possível abrir o socket: ' + E.Message);
  end;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  try
    ServerSocket1.Close;
    ServerSocket1.Active := False;
    EscreveLog('Servidor -> Parado');

    Button6.Enabled := False;

    Button1.Enabled := True;
    Button3.Enabled := False;
  except on E:Exception do begin
    EscreveLog('Servidor -> Falha ao parar: ' + E.Message);
  end;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  try
    ClientSocket1.Close;
    ClientSocket1.Active := False;

    Button5.Enabled := False;

    Button4.Enabled := False;
    Button2.Enabled := True;
  except on E:Exception do begin
    EscreveLog('Cliente -> Falha ao parar: ' + E.Message);
  end;
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  Fin: AnsiString;
begin
  Fin := '';

  if ComboBox1.ItemIndex = 1 then Fin := CR;
  if ComboBox1.ItemIndex = 2 then Fin := LF;
  if ComboBox1.ItemIndex = 3 then Fin := CRLF;

  if ClientSocket1.Active then begin
    if Edit4.Text <> '' then begin
      try
        if ClientSocket1.Socket.SendText(AnsiString(Edit4.Text) + Fin) > 0 then begin
          EscreveLog('Cliente -> Enviou mensagem');

          if CheckBox1.Checked then Edit4.Text := '';
        end else begin
          EscreveLog('Cliente -> Não foi possível enviar mensagem');
        end;
      except on E:Exception do begin
        EscreveLog('Cliente -> Falha ao enviar mensagem: ' + E.Message);
      end;
      end;
    end else begin
      ShowMessage('Escreva uma mensagem para enviar ao servidor');
    end;
  end else begin
    EscreveLog('Cliente -> Sem conexão para enviar mensagens');
  end;

end;

procedure TForm1.Button6Click(Sender: TObject);
var
  Fin: AnsiString;
begin
  Fin := '';

  if ComboBox2.ItemIndex = 1 then Fin := CR;
  if ComboBox2.ItemIndex = 2 then Fin := LF;
  if ComboBox2.ItemIndex = 3 then Fin := CRLF;

  if Assigned(Cliente) then begin
    if Edit5.Text <> '' then begin
      try
        if Cliente.SendText(AnsiString(Edit5.Text)) > 0 then begin
          EscreveLog('Servidor -> Enviou resposta para ' + Cliente.RemoteAddress + ':' + IntToStr(Cliente.RemotePort));

          if CheckBox1.Checked then Edit5.Text := '';
        end else begin
          EscreveLog('Servidor -> Não foi possível responder para ' + Cliente.RemoteAddress + ':' + IntToStr(Cliente.RemotePort));
        end;
      except on E:Exception do begin
        EscreveLog('Servidor -> Falha ao responder para ' + Cliente.RemoteAddress + ':' + IntToStr(Cliente.RemotePort));
      end;
      end;
    end else begin
      ShowMessage('Escreva uma resposta para enviar ao servidor');
    end;
  end else begin
    EscreveLog('Servidor -> Nenhum cliente disponível para enviar resposta');
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

procedure TForm1.ClientSocket1Connect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  EscreveLog('Cliente -> Conectado');

  if Length(Edit4.Text) > 0 then Button5.Enabled := True;
end;

procedure TForm1.ClientSocket1Connecting(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  EscreveLog('Cliente -> Conectando...' + IntToStr(Socket.Handle));
end;

procedure TForm1.ClientSocket1Disconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  EscreveLog('Cliente -> Desconectado');

  Button2.Enabled := True;
  Button4.Enabled := False;
end;

procedure TForm1.ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
  EscreveLog('Cliente -> Erro: ' + SysErrorMessage(ErrorCode) + ' (' + IntToStr(ErrorCode) + ')');
  ErrorCode := 0;

  Button2.Enabled := True;
  Button4.Enabled := False;
end;

procedure TForm1.ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
begin
  EscreveLog('Cliente -> Mensagem recebida: ' + String(Socket.ReceiveText));
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key = #13) and (Trim(Edit1.Text) <> '') and (Trim(Edit3.Text) <> '')) then begin
    if ClientSocket1.Active then Button4.Click;

    Button2.Click;

    Key := #0;
  end;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key = #13) and (Trim(Edit2.Text) <> '')) then begin
    if ServerSocket1.Active then Button3.Click;

    Button1.Click;

    Key := #0;
  end;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key = #13) and (Trim(Edit1.Text) <> '') and (Trim(Edit3.Text) <> '')) then begin
    if ClientSocket1.Active then Button4.Click;

    Button2.Click;

    Key := #0;
  end;
end;

procedure TForm1.Edit4Change(Sender: TObject);
begin
  if Edit4.Text = '' then Button5.Enabled := False;

  if ((Edit4.Text <> '') and (ClientSocket1.Active)) then Button5.Enabled := True;
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key = #13) and (Trim(Edit4.Text) <> '')) then begin
    Button5.Click;
    Key := #0;
  end;
end;

procedure TForm1.Edit5Change(Sender: TObject);
begin
  if Edit5.Text = '' then Button6.Enabled := False;

  if ((Edit5.Text <> '') and (Assigned(Cliente))) then Button6.Enabled := True;
end;

procedure TForm1.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key = #13) and (Trim(Edit5.Text) <> '')) then begin
    Button6.Click;
    Key := #0;
  end;
end;

procedure TForm1.EscreveLog(Msg: String);
begin
  if ((Memo1.Lines.Count > 30) and (CheckBox3.Checked)) then Memo1.Lines.Clear;

  if CheckBox4.Checked then Msg := DateTimeToStr(Now) + ' | ' + Msg;

  Memo1.Lines.Add(Msg);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm1.ServerSocket1ClientConnect(Sender: TObject; Socket: TCustomWinSocket);
begin
  EscreveLog('Servidor -> Cliente conectado: ' + Socket.RemoteAddress + ':' + IntToStr(Socket.RemotePort));

  // Quando alguém se conectar, este assume o socket que pode receber respostas
  Cliente := Socket;

  if Length(Edit5.Text) > 0 then Button6.Enabled := True;
  if CheckBox5.Checked and (Length(Edit5.Text) > 0) then Button6Click(Sender);
end;

procedure TForm1.ServerSocket1ClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  EscreveLog('Servidor -> Cliente desconectado: ' + Socket.RemoteAddress + ':' + IntToStr(Socket.RemotePort));
  Cliente := nil;
end;

procedure TForm1.ServerSocket1ClientError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
  EscreveLog('Servidor -> Erro com o cliente ' + Socket.RemoteAddress + ':' + IntToStr(Socket.RemotePort) + ': ' + IntToStr(ErrorCode));
  ErrorCode := 0;
end;

procedure TForm1.ServerSocket1ClientRead(Sender: TObject;  Socket: TCustomWinSocket);
var
  Txt: String;
begin
  if CheckBox5.Checked then Socket.SendText(Socket.ReceiveText);

  Txt := String(Socket.ReceiveText);
  EscreveLog('Servidor -> Mensagem recebida de ' + Socket.RemoteAddress + ':' + IntToStr(Socket.RemotePort) + ': ' + Txt);

  // Se alguém mandar mensagem dai ele passa a ser quem pode receber respostas
  Cliente := Socket;
end;

procedure TForm1.ServerSocket1Listen(Sender: TObject; Socket: TCustomWinSocket);
begin
  EscreveLog('Servidor -> Disponível na porta ' + IntToStr(Socket.LocalPort));
end;

end.
