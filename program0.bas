$regfile = "m8def.dat"
$crystal = 8000000

Config Pinb.0 = Output
'Config Pinb.1 = Output
'Config Pinb.2 = Output
'Config Pinb.3 = Output

Do

Set Portb.0
'Set Portb.1
'Set Portb.2
'Set Portb.3

Reset Portb.0
'Reset Portb.1
'Reset Portb.2
'Reset Portb.3

Loop

End