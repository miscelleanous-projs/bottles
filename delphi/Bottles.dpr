program Bottles;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils;

const
  BOTTLESNUMBER = 99;

function BottlesCount(i: Integer): string;
begin
  case i of
    -1:
      Result := Format('%d bottles', [BOTTLESNUMBER]);
    0:
      Result := 'No more bottles of beer';
    1:
      Result := 'One bottle of beer';
  else
    Result := Format('%d bottles of beer', [i]);
  end;
end;

function TakeOrBuy(i: Integer): string;
begin
  case i of
    0:
      Result := 'Go to the store and buy some more';
  else
    Result := 'Take one down, pass it around';
  end;
end;

function OnTheWall(yes: Boolean): string;
begin
  case yes of
    True:
      Result := ' on the wall';
  else
    Result := '';
  end;
end;

var
  i: Integer;

begin
  for i := BOTTLESNUMBER downto 0 do
  begin
    WriteLn(Format('%s%s', [BottlesCount(i), OnTheWall(i <> 0)]));
    WriteLn(BottlesCount(i));
    WriteLn(TakeOrBuy(i));
    WriteLn(Format('%s%s', [BottlesCount(i - 1), OnTheWall(i <> 0)]));
    WriteLn;
  end;

  Readln;
end.
