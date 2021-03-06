(**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *)

unit ThriftInterface.Common;

interface

uses
  Classes,
  SysUtils,
  Generics.Collections,
  Thrift,
  Thrift.Utils,
  Thrift.Collections,
  Thrift.Protocol,
  Thrift.Transport;

const
  cThriftInterface_Common_Option_AnsiStr_Binary = False;
  cThriftInterface_Common_Option_Register_Types = False;
  cThriftInterface_Common_Option_ConstPrefix    = False;
  cThriftInterface_Common_Option_Events         = False;
  cThriftInterface_Common_Option_XmlDoc         = False;

type
  TTInvalidParameterException = class;

  TTInvalidParameterException = class(TException)
  public
    type
      ITInvalidParameterExceptionFactory = interface(IBase)
        function GetMessage_: string;
        procedure SetMessage_( const Value: string);

        // Create Exception Object
        function CreateException: TTInvalidParameterException;

        property Message_: string read GetMessage_ write SetMessage_;

        function Get__isset_Message_: Boolean;

        property __isset_Message_: Boolean read Get__isset_Message_;
      end;

      TTInvalidParameterExceptionFactoryImpl = class(TInterfacedObject, IBase, ITInvalidParameterExceptionFactory)
      private
        FMessage_: string;
        
        F__isset_Message_: Boolean;
        
        function GetMessage_: string;
        procedure SetMessage_( const Value: string);

        function Get__isset_Message_: Boolean;
      public
        constructor Create;
        destructor Destroy; override;

        function ToString: string; override;

        // IBase
        procedure Read( const iprot: IProtocol);
        procedure Write( const oprot: IProtocol);

        // Create Exception Object
        function CreateException: TTInvalidParameterException;

        // Properties
        property Message_: string read GetMessage_ write SetMessage_;

        // isset
        property __isset_Message_: Boolean read Get__isset_Message_;
      end;

  private
    FTInvalidParameterExceptionFactory :ITInvalidParameterExceptionFactory;

    FMessage_: string;
    
    F__isset_Message_: Boolean;
    
    function GetMessage_: string;
    procedure SetMessage_( const Value: string);

    function Get__isset_Message_: Boolean;
  public
    constructor Create; overload;
    constructor Create( const AMessage: string); overload;
    destructor Destroy; override;

    function ToString: string; override;

    // Exception Factory
    property TInvalidParameterExceptionFactory: ITInvalidParameterExceptionFactory read FTInvalidParameterExceptionFactory write FTInvalidParameterExceptionFactory;

    // Properties
    property Message_: string read GetMessage_ write SetMessage_;

    // isset
    property __isset_Message_: Boolean read Get__isset_Message_;
  end;

implementation

constructor TTInvalidParameterException.TTInvalidParameterExceptionFactoryImpl.Create;
begin
  inherited;
end;

destructor TTInvalidParameterException.TTInvalidParameterExceptionFactoryImpl.Destroy;
begin
  inherited;
end;

function TTInvalidParameterException.TTInvalidParameterExceptionFactoryImpl.GetMessage_: string;
begin
  Result := FMessage_;
end;

procedure TTInvalidParameterException.TTInvalidParameterExceptionFactoryImpl.SetMessage_( const Value: string);
begin
  F__isset_Message_ := True;
  FMessage_ := Value;
end;

function TTInvalidParameterException.TTInvalidParameterExceptionFactoryImpl.Get__isset_Message_: Boolean;
begin
  Result := F__isset_Message_;
end;

procedure TTInvalidParameterException.TTInvalidParameterExceptionFactoryImpl.Read( const iprot: IProtocol);
var
  field_ : TThriftField;
  struc : TThriftStruct;
  tracker : IProtocolRecursionTracker;

begin
  tracker := iprot.NextRecursionLevel;
  struc := iprot.ReadStructBegin;
  try
    while (true) do
    begin
      field_ := iprot.ReadFieldBegin();
      if (field_.Type_ = TType.Stop) then
      begin
        Break;
      end;
      case field_.ID of
        1: begin
          if (field_.Type_ = TType.String_) then begin
            Self.Message_ := iprot.ReadString();
          end else begin
            TProtocolUtil.Skip(iprot, field_.Type_);
          end;
        end
        else begin
          TProtocolUtil.Skip(iprot, field_.Type_);
        end;
      end;
      iprot.ReadFieldEnd;
    end;
  finally
    iprot.ReadStructEnd;
  end;
end;

procedure TTInvalidParameterException.TTInvalidParameterExceptionFactoryImpl.Write( const oprot: IProtocol);
var
  struc : TThriftStruct;
  field_ : TThriftField;
  tracker : IProtocolRecursionTracker;
begin
  tracker := oprot.NextRecursionLevel;
  Thrift.Protocol.Init( struc, 'TInvalidParameterException');
  oprot.WriteStructBegin(struc);
  Thrift.Protocol.Init( field_);
  if (__isset_Message_) then begin
    field_.Name := 'message';
    field_.Type_  := TType.String_;
    field_.ID := 1;
    oprot.WriteFieldBegin(field_);
    oprot.WriteString(Self.Message_);
    oprot.WriteFieldEnd();
  end;
  oprot.WriteFieldStop();
  oprot.WriteStructEnd();
end;

function TTInvalidParameterException.TTInvalidParameterExceptionFactoryImpl.ToString: string;
var
  _sb0 : TThriftStringBuilder;
  _first1 : Boolean;
begin
  _sb0 := TThriftStringBuilder.Create('(');
  try
    _first1 := TRUE;
    if (__isset_Message_) then begin
      if not _first1 then _sb0.Append(',');
      _first1 := FALSE;
      _sb0.Append('Message_: ');
      _sb0.Append( Self.Message_);
    end;
    _sb0.Append(')');
    Result := _sb0.ToString;
    if _first1 then {prevent warning};
  finally
    _sb0.Free;
  end;
end;

function TTInvalidParameterException.TTInvalidParameterExceptionFactoryImpl.CreateException: TTInvalidParameterException;
begin
  Result := TTInvalidParameterException.Create;
  Result.TInvalidParameterExceptionFactory := Self;
  if __isset_Message_ then
  begin
    Result.Message_ := Message_;
  end;
  Result.UpdateMessageProperty;
end;

constructor TTInvalidParameterException.Create;
begin
  inherited Create('');
  FTInvalidParameterExceptionFactory := TTInvalidParameterExceptionFactoryImpl.Create;
end;

constructor TTInvalidParameterException.Create( const AMessage: string);
begin
  Create;
  Message_ := AMessage;
  UpdateMessageProperty;
end;

destructor TTInvalidParameterException.Destroy;
begin
  inherited;
end;

function TTInvalidParameterException.GetMessage_: string;
begin
  Result := FMessage_;
end;

procedure TTInvalidParameterException.SetMessage_( const Value: string);
begin
  F__isset_Message_ := True;
  FMessage_ := Value;
  FTInvalidParameterExceptionFactory.Message_ := Value;
end;

function TTInvalidParameterException.Get__isset_Message_: Boolean;
begin
  Result := F__isset_Message_;
end;

function TTInvalidParameterException.ToString: string;
var
  _sb2 : TThriftStringBuilder;
  _first3 : Boolean;
begin
  _sb2 := TThriftStringBuilder.Create('(');
  try
    _first3 := TRUE;
    if (__isset_Message_) then begin
      if not _first3 then _sb2.Append(',');
      _first3 := FALSE;
      _sb2.Append('Message_: ');
      _sb2.Append( Self.Message_);
    end;
    _sb2.Append(')');
    Result := _sb2.ToString;
    if _first3 then {prevent warning};
  finally
    _sb2.Free;
  end;
end;


initialization

finalization


end.
