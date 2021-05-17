$sim
$regfile = "m8def.dat"
$crystal = 8000000

Config PORTD = Output
Config PINB.0 = Output
Config PINB.1 = Output
Config PINB.2 = Output
Config PINB.3 = Output

Config Timer0 = Timer, Prescale =256

Declare Sub Pobr_znaku(cyfra As Byte)
On Timer0  Mult_wysw

Dim A As Byte, B As Byte, C As Byte, D As Byte
Dim Nr_wysw As Byte
Dim I_a As Byte
Dim I_b As Byte
Dim I_c As Byte
Dim I_d As Byte

W1 Alias Portb.0
W2 Alias Portb.1
W3 Alias Portb.2
W4 Alias Portb.3

Enable Interrupts
Enable Timer0

Load Timer0, 125

Do
A=15 : B=15 : C=15 : D=15

For I_a = 15 To 0 Step -1
   A = I_a

   For I_b = 15 To 0 Step -1
      B = I_b

      For I_c = 15 To 0 Step -1
         C = I_c

               For I_d = 15 To 0 Step -1
                  D = I_d
                  Wait 1

                Next I_d

            Next I_c

        Next I_b

    Next I_a

Wait 1

A=21 : B=21 : C=21 : D=21
waitms 400
A=20 : B=21 : C=21 : D=21
waitms 400
A=20 : B=20 : C=21 : D=21
waitms 400
A=20 : B=20 : C=20 : D=21
waitms 400
A=20 : B=20 : C=20 : D=20

wait 1

Loop

End


Sub Pobr_znaku(cyfra As Byte)
   If Cyfra <28 Then
      Portd = Lookup(cyfra , Kody7seg)
   Else
      portd = 0
   End If
End Sub


Mult_wysw:
   Load Timer0 , 125
   Set W1
   Set W2
   Set W3
   Set W4
   Select Case Nr_wysw

     Case 0:
      Call Pobr_znaku(a)
       Reset W1
     Case 1:
      Call Pobr_znaku(b)
      Reset W2
     Case 2:
      Call Pobr_znaku(c)
      Reset W3
     Case 3:
      Call Pobr_znaku(d)
      Reset W4
   End Select
   Incr Nr_wysw

   If Nr_wysw = 4 Then
      Nr_wysw = 0
   End If
Return



Kody7seg:
Data &B00111111 , '0
Data &B00000110 , '1
Data &B01011011 , '2
Data &B01001111 , '3
Data &B01100110 , '4
Data &B01101101 , '5
Data &B01111101 , '6
Data &B00000111 , '7
Data &B01111111 , '8
Data &B01101111 , '9
Data &B01110111 , 'A
Data &B01111100 , 'b
Data &B01110001 , 'C
Data &B01011110 , 'd
Data &B01111001 , 'E
Data &B01110001 , 'F

'FULL
Data &B01110001 , 'F 16
Data &B00111110 , 'U 17
Data &B00111000 , 'L 18
Data &B00111000 , 'L 19

Data &B00000000 , 'L 20
'-
Data &B01000000   'L 21
