program Bottles;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, System.StrUtils;

const
  MAXBEERS = 99;

begin
  for var i: Integer := MAXBEERS downto 0 do
  begin
    Writeln(Format('%s bottle%s of beer on the wall',
      [(IfThen(i <> 0, IntToStr(i), 'No more')), IfThen(i > 1, 's', '')]));

    Writeln(Format('%s bottle%s of beer',
      [(IfThen(i <> 0, IntToStr(i), 'no more')), IfThen(i > 1, 's', '')]));

    Writeln(IfThen(i <> 0, 'Take one down and pass it around',
      'Go to the store and buy some more'));

    Writeln(IfThen(i <> 0,
      Format('%shere''s %s more bottle%s of beer on the wall!',
      [IfThen(i > 1, 'Now t', 'T'), IfThen(i = 1, 'no', IntToStr(i - 1)),
      IfThen(i = 2, '', 's')]), Format('%d on the wall.', [MAXBEERS])));

    Writeln;
  end;

  Readln;

end.
