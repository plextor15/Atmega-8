$sim
$regfile = "m8def.dat"
$crystal = 8000000

Config portc = Output
Config lcd = 16*2
cursor off
cls

'lcd "BASCOM"
'lowerline
'lcd "AVR"

do

Deflcdchar 0,16,16,16,16,16,16,16,32' replace [x] with number (0-7)
Deflcdchar 1,24,16,16,24,16,16,24,32' replace [x] with number (0-7)
Deflcdchar 2,28,16,16,28,16,16,28,32' replace [x] with number (0-7)
Deflcdchar 3,30,16,16,30,16,16,30,32' replace [x] with number (0-7)
Deflcdchar 4,30,17,17,30,17,17,30,32' replace [x] with number (0-7)

cls
lcd Chr(0);
waitms 300
cls
lcd Chr(1);
waitms 300
cls
lcd Chr(2);
waitms 300
cls
lcd Chr(3);
waitms 300
cls
lcd Chr(4);
waitms 300


Deflcdchar 0,32,16,16,16,16,16,16,32' replace [x] with number (0-7)
Deflcdchar 1,8,16,16,16,24,16,16,32' replace [x] with number (0-7)
Deflcdchar 2,12,16,16,16,28,16,16,32' replace [x] with number (0-7)
Deflcdchar 3,14,16,16,16,30,16,16,32' replace [x] with number (0-7)
Deflcdchar 4,14,17,17,17,31,17,17,32' replace [x] with number (0-7)

cls
lcd "B"
lcd Chr(0);
waitms 300
cls
lcd "B"
lcd Chr(1);
waitms 300
cls
lcd "B"
lcd Chr(2);
waitms 300
cls
lcd "B"
lcd Chr(3);
waitms 300
cls
lcd "B"
lcd Chr(4);
waitms 300


Deflcdchar 0,32,16,16,32,32,32,16,32' replace [x] with number (0-7)
Deflcdchar 1,8,16,16,8,32,32,24,32' replace [x] with number (0-7)
Deflcdchar 2,12,16,16,12,32,32,28,32' replace [x] with number (0-7)
Deflcdchar 3,14,16,16,14,32,32,30,32' replace [x] with number (0-7)
Deflcdchar 4,15,16,16,14,1,1,30,32' replace [x] with number (0-7)

cls
lcd "BA"
lcd Chr(0);
waitms 300
cls
lcd "BA"
lcd Chr(1);
waitms 300
cls
lcd "BA"
lcd Chr(2);
waitms 300
cls
lcd "BA"
lcd Chr(3);
waitms 300
cls
lcd "BA"
lcd Chr(4);
waitms 300


Deflcdchar 0,32,16,16,16,16,16,32,32' replace [x] with number (0-7)
Deflcdchar 1,8,16,16,16,16,16,8,32' replace [x] with number (0-7
Deflcdchar 2,12,16,16,16,16,16,12,32' replace [x] with number (0-7)
Deflcdchar 3,14,16,16,16,16,16,14,32' replace [x] with number (0-7)
Deflcdchar 4,14,17,16,16,16,17,14,32' replace [x] with number (0-7)

cls
lcd "BAS"
lcd Chr(0);
waitms 300
cls
lcd "BAS"
lcd Chr(1);
waitms 300
cls
lcd "BAS"
lcd Chr(2);
waitms 300
cls
lcd "BAS"
lcd Chr(3);
waitms 300
cls
lcd "BAS"
lcd Chr(4);
waitms 300


Deflcdchar 4,14,17,17,17,17,17,14,32' replace [x] with number (0-7)

cls
lcd "BASC"
lcd Chr(0);
waitms 300
cls
lcd "BASC"
lcd Chr(1);
waitms 300
cls
lcd "BASC"
lcd Chr(2);
waitms 300
cls
lcd "BASC"
lcd Chr(3);
waitms 300
cls
lcd "BASC"
lcd Chr(4);
waitms 300


Deflcdchar 0,16,16,16,16,16,16,16,32' replace [x] with number (0-7)
Deflcdchar 1,16,24,16,16,16,16,16,32' replace [x] with number (0-7)
Deflcdchar 2,16,24,20,20,16,16,16,32' replace [x] with number (0-7)
Deflcdchar 3,16,26,20,20,16,16,16,32' replace [x] with number (0-7)
Deflcdchar 4,17,27,21,21,17,17,17,32' replace [x] with number (0-7)

cls
lcd "BASCO"
lcd Chr(0);
waitms 300
cls
lcd "BASCO"
lcd Chr(1);
waitms 300
cls
lcd "BASCO"
lcd Chr(2);
waitms 300
cls
lcd "BASCO"
lcd Chr(3);
waitms 300
cls
lcd "BASCO"
lcd Chr(4);
waitms 300

wait 2
cls

'AVR
dim i as Byte
for i=1 to 10

Deflcdchar 0,32,3,3,6,6,12,12,12' replace [x] with number (0-7)
Deflcdchar 1,32,24,24,12,12,6,6,6' replace [x] with number (0-7)
Deflcdchar 2,32,16,16,16,24,24,24,24' replace [x] with number (0-7)
Deflcdchar 3,32,1,1,1,3,3,3,3' replace [x] with number (0-7)
Deflcdchar 4,32,15,15,12,12,12,12,15' replace [x] with number (0-7)
Deflcdchar 5,32,24,30,6,6,6,6,30' replace [x] with number (0-7)

cls
lcd Chr(0);Chr(1);Chr(2);Chr(3);Chr(4);Chr(5);
waitms 200



Deflcdchar 0,12,15,15,12,12,12,12,12' replace [x] with number (0-7)
Deflcdchar 1,6,30,30,6,6,6,6,6' replace [x] with number (0-7)
Deflcdchar 2,24,24,12,12,12,6,6,1' replace [x] with number (0-7)
Deflcdchar 3,3,3,6,6,6,12,12,16' replace [x] with number (0-7)
Deflcdchar 4,15,12,12,12,12,12,12,12' replace [x] with number (0-7)
Deflcdchar 5,24,24,12,12,12,6,6,6' replace [x] with number (0-7)

cls
lowerline
lcd Chr(0);Chr(1);Chr(2);Chr(3);Chr(4);Chr(5);
waitms 200

next i


Loop
End