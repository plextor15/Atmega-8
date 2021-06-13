$regfile = "m8def.dat"
$crystal = 8000000



Config Clock = Soft
Config Date = Dmy , Separator = /




Config Lcd = 16 * 2
Config Lcdpin = Pin.Db4=PORTC.3, Db5=PORTC.2, Db6=PORTC.1, Db7=PORTC.0, E=PORTC.4, Rs=PORTC.5
Config 1wire = PORTB.0

Declare Sub Odcz_temp
Dim Temperatura(2) As Byte





Enable Interrupts

Date$ = "10/06/21"
Time$ = "14:10"




Do
 Cls
 Lcd Time$
 Lowerline

 Call Odcz_temp

 If Temperatura(2) = 0 Then
  Lcd "Temp: " ; Temperatura(1) ; "C"
 Else
  Lcd "Temp: -" ; Temperatura(1) ; "C"
 End If

 Waitms 2000
 Cls
 Lcd Date$
 Lowerline

 Call Odcz_temp

 If Temperatura(2) = 0 Then
  Lcd "Temp: " ; Temperatura(1) ; "C"
 Else
  Lcd "Temp: -" ; Temperatura(1) ; "C"
 End If



Loop
End





Sub Odcz_temp
 1wreset
 1wwrite &HCC
 1wwrite &H44
 Waitms 750
 1wreset
 1wwrite &HCC
 1wwrite &HBE
 Temperatura(1) = 1wread(2)
 1wreset

 If Err=1 Then
  Cls
  Lcd "Brak termo"
  Do
  Loop
 End If

 If Temperatura(2) > 0 Then
   Temperatura(1) = 256 - Temperatura(1)
 End If
 Temperatura(1)=Temperatura(1)/2
End Sub