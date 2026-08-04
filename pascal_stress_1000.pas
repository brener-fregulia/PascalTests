program PascalHighlightStress1000;

{$mode objfpc}{$H+}

uses
  SysUtils, Math;

type
  TIntArray = array of Integer;

  TPoint = record
    X: Double;
    Y: Double;
  end;

  TStatistics = record
    Minimum: Integer;
    Maximum: Integer;
    Sum: Int64;
    Average: Double;
  end;

var
  GlobalCounter: Integer = 0;
  GlobalAccumulator: Int64 = 0;
  GlobalMessage: string = 'Pascal syntax highlighting stress test';

function ClampInteger(const Value, LowerBound, UpperBound: Integer): Integer;
begin
  if Value < LowerBound then
    Result := LowerBound
  else if Value > UpperBound then
    Result := UpperBound
  else
    Result := Value;
end;

function IsPrime(const Value: Integer): Boolean;
var
  Divisor: Integer;
begin
  if Value < 2 then
    Exit(False);
  if Value = 2 then
    Exit(True);
  if Value mod 2 = 0 then
    Exit(False);
  Divisor := 3;
  while Divisor * Divisor <= Value do
  begin
    if Value mod Divisor = 0 then
      Exit(False);
    Inc(Divisor, 2);
  end;
  Result := True;
end;

function Fibonacci(const Index: Integer): Int64;
var
  A, B, NextValue: Int64;
  I: Integer;
begin
  if Index <= 0 then
    Exit(0);
  A := 0;
  B := 1;
  for I := 2 to Index do
  begin
    NextValue := A + B;
    A := B;
    B := NextValue;
  end;
  Result := B;
end;

procedure FillArray(var Values: TIntArray; const Count, Seed: Integer);
var
  I: Integer;
begin
  SetLength(Values, Count);
  for I := 0 to High(Values) do
    Values[I] := (Seed * 31 + I * 17) mod 10007;
end;

procedure SortArray(var Values: TIntArray);
var
  I, J, Temporary: Integer;
begin
  for I := Low(Values) to High(Values) - 1 do
    for J := I + 1 to High(Values) do
      if Values[J] < Values[I] then
      begin
        Temporary := Values[I];
        Values[I] := Values[J];
        Values[J] := Temporary;
      end;
end;

function CalculateStatistics(const Values: TIntArray): TStatistics;
var
  I: Integer;
begin
  Result.Minimum := 0;
  Result.Maximum := 0;
  Result.Sum := 0;
  Result.Average := 0.0;
  if Length(Values) = 0 then
    Exit;
  Result.Minimum := Values[0];
  Result.Maximum := Values[0];
  for I := Low(Values) to High(Values) do
  begin
    if Values[I] < Result.Minimum then
      Result.Minimum := Values[I];
    if Values[I] > Result.Maximum then
      Result.Maximum := Values[I];
    Inc(Result.Sum, Values[I]);
  end;
  Result.Average := Result.Sum / Length(Values);
end;

function Distance(const A, B: TPoint): Double;
begin
  Result := Sqrt(Sqr(B.X - A.X) + Sqr(B.Y - A.Y));
end;

function GeneratedFunction0001(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 3 + 7;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 4;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0001(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0001(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0002(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 4 + 14;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 5;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0002(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0002(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0003(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 5 + 21;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 6;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0003(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0003(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0004(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 6 + 28;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 7;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0004(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0004(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0005(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 7 + 35;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 8;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0005(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0005(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0006(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 8 + 42;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 9;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0006(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0006(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0007(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 9 + 49;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 10;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0007(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0007(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0008(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 10 + 56;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 11;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0008(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0008(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0009(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 11 + 63;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 12;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0009(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0009(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0010(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 12 + 70;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 13;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0010(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0010(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0011(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 13 + 77;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 14;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0011(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0011(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0012(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 14 + 84;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 15;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0012(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0012(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0013(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 2 + 91;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 16;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0013(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0013(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0014(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 3 + 1;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 17;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0014(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0014(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0015(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 4 + 8;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 18;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0015(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0015(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0016(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 5 + 15;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 19;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0016(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0016(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0017(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 6 + 22;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 3;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0017(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0017(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0018(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 7 + 29;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 4;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0018(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0018(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0019(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 8 + 36;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 5;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0019(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0019(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0020(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 9 + 43;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 6;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0020(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0020(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0021(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 10 + 50;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 7;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0021(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0021(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0022(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 11 + 57;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 8;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0022(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0022(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0023(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 12 + 64;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 9;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0023(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0023(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0024(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 13 + 71;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 10;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0024(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0024(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0025(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 14 + 78;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 11;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0025(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0025(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0026(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 2 + 85;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 12;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0026(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0026(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0027(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 3 + 92;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 13;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0027(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0027(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0028(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 4 + 2;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 14;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0028(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0028(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0029(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 5 + 9;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 15;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0029(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0029(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0030(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 6 + 16;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 16;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0030(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0030(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0031(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 7 + 23;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 17;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0031(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0031(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0032(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 8 + 30;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 18;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0032(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0032(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0033(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 9 + 37;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 19;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0033(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0033(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0034(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 10 + 44;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 3;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0034(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0034(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0035(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 11 + 51;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 4;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0035(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0035(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

{ Padding comment 00001: editor highlighting and scrolling stress data. }
{ Padding comment 00002: editor highlighting and scrolling stress data. }
procedure RunDemonstration;
var
  Values: TIntArray;
  Stats: TStatistics;
  PointA, PointB: TPoint;
  I: Integer;
begin
  FillArray(Values, 64, 42);
  SortArray(Values);
  Stats := CalculateStatistics(Values);
  PointA.X := 1.5;
  PointA.Y := 2.5;
  PointB.X := 10.0;
  PointB.Y := -4.0;
  for I := 1 to 20 do
    GlobalAccumulator := GlobalAccumulator + Fibonacci(I);
  GeneratedProcedure0001(GlobalAccumulator, Stats.Minimum);
  GeneratedProcedure0002(GlobalAccumulator, Stats.Maximum);
  GeneratedProcedure0003(GlobalAccumulator, Round(Stats.Average));
  WriteLn(GlobalMessage);
  WriteLn('Minimum: ', Stats.Minimum);
  WriteLn('Maximum: ', Stats.Maximum);
  WriteLn('Average: ', FormatFloat('0.00', Stats.Average));
  WriteLn('Distance: ', FormatFloat('0.000', Distance(PointA, PointB)));
  WriteLn('Prime check: ', BoolToStr(IsPrime(97), True));
  WriteLn('Accumulator: ', GlobalAccumulator);
  WriteLn('Counter: ', GlobalCounter);
end;

begin
  RunDemonstration;
end.
