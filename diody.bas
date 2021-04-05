'$sim
$regfile = "m8def.dat"
$crystal = 1000000

Config PortC = Output

Do

  Portc = &B00000001
  Waitms 400

  Portc = &B00000010
  Waitms 400

  Portc = &B00000100
  Waitms 400

  Portc = &B00001000
  Waitms 400

  Portc = &B00010000
  Waitms 400

  Portc = &B00100000
  Waitms 400

  Portc = &B00100001
  Waitms 400

  Portc = &B00100010
  Waitms 400

  Portc = &B00100100
  Waitms 400

  Portc = &B00101000
  Waitms 400

  Portc = &B00110000
  Waitms 400

  Portc = &B00110001
  Waitms 400

  Portc = &B00110010
  Waitms 400

  Portc = &B00110100
  Waitms 400

  Portc = &B00111000
  Waitms 400

  Portc = &B00111001
  Waitms 400

  Portc = &B00111010
  Waitms 400

  Portc = &B00111100
  Waitms 400

  Portc = &B00111101
  Waitms 400

  Portc = &B00111110
  Waitms 400

  Portc = &B00111111
  Waitms 400

  Portc = &B00000000
  Waitms 200

  Portc = &B00111111
  Waitms 200

  Portc = &B00000000
  Waitms 200

  Portc = &B00111111
  Waitms 200

  Portc = &B00000000
  Waitms 400

  Portc = &B00111111
  Waitms 1000

  Portc = &B00000000
  Waitms 1000
Loop
End