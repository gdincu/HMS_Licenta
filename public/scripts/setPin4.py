import RPi.GPIO as GPIO 
from time import sleep 
# argv.py
import sys

GPIO.setwarnings(False)  
GPIO.setmode(GPIO.BCM) 
GPIO.setup(4, GPIO.OUT) 

tempState = 0
if sys.argv[1] == "on":
	tempState = 1

GPIO.output(4, tempState)
#GPIO.cleanup()




