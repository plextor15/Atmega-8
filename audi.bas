$sim
$regfile = "m8def.dat"
$crystal = 1000000

Config Portd = Output

Config pinb.0 = Input
Config Pinb.1 = Input

Lewo Alias Pinb.0
Prawo Alias Pinb.1

Declare Sub wLewo()
Declare Sub wPrawo()
Declare Sub awaryjne()




Do

If Lewo = 0 Then
   Call wLewo
End If

If Prawo = 0 Then
   Call wPrawo
End If

'awaryjne'
If Lewo = 0 Then
   If Prawo = 0 Then
      Call awaryjne
   End If
End If
If Prawo = 0 Then
   If Lewo = 0 Then
      Call awaryjne
   End If
End If

Loop
End




Sub awaryjne
Portd = &B00000000
Waitms 500
Portd = &B11111111
Waitms 500
End Sub


Sub wLewo
Portd = &B11111110
Waitms 200
Portd = &B11111100
Waitms 200
Portd = &B11111000
Waitms 200
Portd = &B11110000
Waitms 200
Portd = &B11100000
Waitms 200
Portd = &B11000000
Waitms 200
Portd = &B10000000
Waitms 200
Portd = &B00000000
Waitms 200

Portd = &B11111111
End Sub


Sub wPrawo
PortD = &B01111111
Waitms 200
PortD = &B00111111
Waitms 200
PortD = &B00011111
Waitms 200
PortD = &B00001111
Waitms 200
PortD = &B00000111
Waitms 200
PortD = &B00000011
Waitms 200
PortD = &B00000001
Waitms 200
PortD = &B00000000
Waitms 200

Portd = &B11111111
End Sub






