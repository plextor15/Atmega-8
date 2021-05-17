'$sim
$regfile = "m8def.dat"
$crystal = 8000000

Config pinb.1 = Output

'1,96kHz
Config TIMER1 = Pwm , Pwm = 8 , Compare A Pwm = Clear Up , Compare B Pwm = Disconnect , Prescale = 8

'wypelnienie 25%:
PWM1A = 64

End