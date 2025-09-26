unit uResponse;

interface

uses System.SysUtils, System.Generics.Collections;

type
  Tresponse = record

    sucess    : Boolean;
    ErrorCode : Integer;
    Massage   : string;
    Data      : TObjectList<TObject>;

  end;

implementation

end.
