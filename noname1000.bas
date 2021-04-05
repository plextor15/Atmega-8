$regfile ="m8def.dat"
$crystal = 8000000

Config Pinb 1 + Output

Config Timer1 = Pwm ,
               Pwm =8 ,
               Compare A Pwm = Clear Up ,
               Compare B Pwm = Disconnect ,
               Prescale = 8

Pwm1a = 64
End