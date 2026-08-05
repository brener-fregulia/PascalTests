program PascalHighlightStress5000;

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

function GeneratedFunction0036(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 12 + 58;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 5;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0036(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0036(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0037(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 13 + 65;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 6;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0037(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0037(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0038(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 14 + 72;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 7;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0038(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0038(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0039(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 2 + 79;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 8;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0039(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0039(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0040(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 3 + 86;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 9;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0040(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0040(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0041(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 4 + 93;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 10;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0041(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0041(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0042(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 5 + 3;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 11;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0042(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0042(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0043(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 6 + 10;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 12;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0043(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0043(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0044(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 7 + 17;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 13;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0044(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0044(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0045(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 8 + 24;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 14;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0045(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0045(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0046(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 9 + 31;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 15;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0046(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0046(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0047(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 10 + 38;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 16;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0047(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0047(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0048(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 11 + 45;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 17;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0048(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0048(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0049(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 12 + 52;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 18;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0049(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0049(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0050(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 13 + 59;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 19;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0050(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0050(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0051(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 14 + 66;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 3;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0051(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0051(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0052(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 2 + 73;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 4;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0052(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0052(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0053(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 3 + 80;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 5;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0053(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0053(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0054(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 4 + 87;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 6;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0054(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0054(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0055(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 5 + 94;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 7;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0055(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0055(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0056(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 6 + 4;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 8;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0056(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0056(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0057(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 7 + 11;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 9;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0057(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0057(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0058(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 8 + 18;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 10;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0058(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0058(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0059(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 9 + 25;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 11;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0059(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0059(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0060(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 10 + 32;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 12;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0060(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0060(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0061(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 11 + 39;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 13;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0061(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0061(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0062(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 12 + 46;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 14;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0062(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0062(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0063(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 13 + 53;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 15;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0063(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0063(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0064(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 14 + 60;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 16;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0064(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0064(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0065(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 2 + 67;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 17;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0065(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0065(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0066(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 3 + 74;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 18;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0066(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0066(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0067(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 4 + 81;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 19;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0067(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0067(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0068(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 5 + 88;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 3;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0068(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0068(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0069(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 6 + 95;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 4;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0069(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0069(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0070(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 7 + 5;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 5;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0070(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0070(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0071(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 8 + 12;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 6;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0071(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0071(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0072(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 9 + 19;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 7;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0072(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0072(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0073(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 10 + 26;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 8;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0073(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0073(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0074(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 11 + 33;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 9;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0074(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0074(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0075(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 12 + 40;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 10;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0075(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0075(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0076(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 13 + 47;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 11;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0076(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0076(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0077(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 14 + 54;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 12;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0077(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0077(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0078(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 2 + 61;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 13;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0078(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0078(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0079(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 3 + 68;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 14;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0079(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0079(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0080(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 4 + 75;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 15;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0080(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0080(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0081(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 5 + 82;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 16;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0081(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0081(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0082(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 6 + 89;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 17;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0082(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0082(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0083(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 7 + 96;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 18;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0083(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0083(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0084(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 8 + 6;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 19;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0084(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0084(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0085(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 9 + 13;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 3;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0085(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0085(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0086(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 10 + 20;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 4;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0086(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0086(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0087(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 11 + 27;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 5;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0087(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0087(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0088(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 12 + 34;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 6;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0088(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0088(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0089(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 13 + 41;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 7;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0089(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0089(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0090(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 14 + 48;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 8;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0090(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0090(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0091(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 2 + 55;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 9;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0091(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0091(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0092(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 3 + 62;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 10;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0092(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0092(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0093(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 4 + 69;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 11;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0093(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0093(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0094(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 5 + 76;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 12;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0094(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0094(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0095(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 6 + 83;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 13;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0095(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0095(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0096(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 7 + 90;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 14;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0096(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0096(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0097(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 8 + 0;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 15;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0097(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0097(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0098(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 9 + 7;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 16;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0098(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0098(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0099(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 10 + 14;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 17;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0099(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0099(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0100(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 11 + 21;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 18;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0100(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0100(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0101(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 12 + 28;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 19;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0101(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0101(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0102(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 13 + 35;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 3;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0102(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0102(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0103(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 14 + 42;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 4;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0103(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0103(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0104(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 2 + 49;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 5;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0104(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0104(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0105(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 3 + 56;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 6;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0105(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0105(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0106(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 4 + 63;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 7;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0106(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0106(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0107(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 5 + 70;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 8;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0107(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0107(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0108(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 6 + 77;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 9;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0108(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0108(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0109(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 7 + 84;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 10;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0109(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0109(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0110(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 8 + 91;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 11;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0110(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0110(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0111(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 9 + 1;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 12;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0111(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0111(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0112(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 10 + 8;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 13;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0112(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0112(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0113(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 11 + 15;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 14;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0113(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0113(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0114(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 12 + 22;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 15;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0114(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0114(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0115(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 13 + 29;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 16;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0115(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0115(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0116(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 14 + 36;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 17;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0116(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0116(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0117(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 2 + 43;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 18;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0117(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0117(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0118(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 3 + 50;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 19;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0118(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0118(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0119(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 4 + 57;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 3;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0119(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0119(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0120(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 5 + 64;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 4;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0120(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0120(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0121(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 6 + 71;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 5;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0121(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0121(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0122(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 7 + 78;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 6;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0122(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0122(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0123(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 8 + 85;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 7;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0123(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0123(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0124(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 9 + 92;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 8;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0124(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0124(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0125(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 10 + 2;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 9;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0125(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0125(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0126(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 11 + 9;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 10;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0126(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0126(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0127(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 12 + 16;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 11;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0127(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0127(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0128(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 13 + 23;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 12;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0128(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0128(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0129(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 14 + 30;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 13;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0129(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0129(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0130(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 2 + 37;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 14;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0130(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0130(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0131(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 3 + 44;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 15;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0131(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0131(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0132(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 4 + 51;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 16;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0132(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0132(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0133(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 5 + 58;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 17;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0133(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0133(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0134(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 6 + 65;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 18;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0134(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0134(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0135(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 7 + 72;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 19;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0135(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0135(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0136(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 8 + 79;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 3;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0136(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0136(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0137(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 9 + 86;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 4;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0137(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0137(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0138(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 10 + 93;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 5;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0138(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0138(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0139(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 11 + 3;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 6;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0139(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0139(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0140(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 12 + 10;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 7;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0140(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0140(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0141(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 13 + 17;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 8;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0141(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0141(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0142(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 14 + 24;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 9;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0142(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0142(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0143(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 2 + 31;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 10;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0143(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0143(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0144(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 3 + 38;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 11;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0144(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0144(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0145(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 4 + 45;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 12;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0145(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0145(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0146(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 5 + 52;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 13;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0146(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0146(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0147(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 6 + 59;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 14;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0147(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0147(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0148(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 7 + 66;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 15;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0148(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0148(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0149(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 8 + 73;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 16;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0149(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0149(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0150(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 9 + 80;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 17;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0150(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0150(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0151(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 10 + 87;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 18;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0151(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0151(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0152(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 11 + 94;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 19;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0152(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0152(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0153(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 12 + 4;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 3;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0153(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0153(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0154(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 13 + 11;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 4;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0154(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0154(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0155(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 14 + 18;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 5;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0155(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0155(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0156(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 2 + 25;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 6;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0156(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0156(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0157(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 3 + 32;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 7;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0157(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0157(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0158(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 4 + 39;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 8;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0158(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0158(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0159(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 5 + 46;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 9;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0159(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0159(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0160(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 6 + 53;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 10;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0160(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0160(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0161(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 7 + 60;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 11;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0161(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0161(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0162(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 8 + 67;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 12;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0162(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0162(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0163(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 9 + 74;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 13;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0163(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0163(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0164(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 10 + 81;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 14;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0164(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0164(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0165(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 11 + 88;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 15;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0165(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0165(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0166(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 12 + 95;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 16;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0166(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0166(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0167(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 13 + 5;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 17;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0167(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0167(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0168(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 14 + 12;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 18;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0168(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0168(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0169(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 2 + 19;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 19;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0169(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0169(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0170(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 3 + 26;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 3;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0170(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0170(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0171(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 4 + 33;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 4;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0171(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0171(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0172(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 5 + 40;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 5;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0172(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0172(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0173(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 6 + 47;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 6;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0173(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0173(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0174(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 7 + 54;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 7;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0174(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0174(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0175(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 8 + 61;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 8;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0175(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0175(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0176(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 9 + 68;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 9;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0176(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0176(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0177(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 10 + 75;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 10;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0177(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0177(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0178(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 11 + 82;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 11;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0178(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0178(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0179(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 12 + 89;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 12;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0179(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0179(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0180(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 13 + 96;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 13;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0180(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0180(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0181(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 14 + 6;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 14;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0181(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0181(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0182(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 2 + 13;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 15;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0182(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0182(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0183(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 3 + 20;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 16;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0183(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0183(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0184(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 4 + 27;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 17;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0184(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0184(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0185(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 5 + 34;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 18;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0185(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0185(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0186(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 6 + 41;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 19;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0186(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0186(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0187(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 7 + 48;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 3;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0187(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0187(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0188(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 8 + 55;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 4;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0188(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0188(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0189(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 9 + 62;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 5;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0189(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0189(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0190(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 10 + 69;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 6;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0190(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0190(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0191(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 11 + 76;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 7;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0191(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0191(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0192(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 12 + 83;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 8;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0192(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0192(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0193(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 13 + 90;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 9;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0193(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0193(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 6 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0194(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 14 + 0;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 10;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0194(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0194(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 7 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0195(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 2 + 7;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 11;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0195(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0195(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 8 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0196(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 3 + 14;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 12;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0196(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0196(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 9 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0197(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 4 + 21;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 13;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0197(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0197(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 10 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0198(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 5 + 28;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 14;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0198(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0198(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 2 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0199(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 6 + 35;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 15;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0199(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0199(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 3 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0200(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 7 + 42;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 16;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0200(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0200(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 4 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

function GeneratedFunction0201(const Value: Integer): Integer;
var
  Temporary: Integer;
begin
  Temporary := Value * 8 + 49;
  if Odd(Temporary) then
    Result := Temporary div 2
  else
    Result := Temporary + 17;
  Result := ClampInteger(Result, -1000000, 1000000);
end;

procedure GeneratedProcedure0201(var Accumulator: Int64; const Seed: Integer);
var
  LocalValue: Integer;
begin
  LocalValue := GeneratedFunction0201(Seed);
  Accumulator := Accumulator + LocalValue;
  if LocalValue mod 5 = 0 then
    Inc(GlobalCounter)
  else
    Dec(GlobalCounter);
end;

{ Padding comment 00001: editor highlighting and scrolling stress data. }
{ Padding comment 00002: editor highlighting and scrolling stress data. }
{ Padding comment 00003: editor highlighting and scrolling stress data. }
{ Padding comment 00004: editor highlighting and scrolling stress data. }
{ Padding comment 00005: editor highlighting and scrolling stress data. }
{ Padding comment 00006: editor highlighting and scrolling stress data. }
{ Padding comment 00007: editor highlighting and scrolling stress data. }
{ Padding comment 00008: editor highlighting and scrolling stress data. }
{ Padding comment 00009: editor highlighting and scrolling stress data. }
{ Padding comment 00010: editor highlighting and scrolling stress data. }
{ Padding comment 00011: editor highlighting and scrolling stress data. }
{ Padding comment 00012: editor highlighting and scrolling stress data. }
{ Padding comment 00013: editor highlighting and scrolling stress data. }
{ Padding comment 00014: editor highlighting and scrolling stress data. }
{ Padding comment 00015: editor highlighting and scrolling stress data. }
{ Padding comment 00016: editor highlighting and scrolling stress data. }
{ Padding comment 00017: editor highlighting and scrolling stress data. }
{ Padding comment 00018: editor highlighting and scrolling stress data. }
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
