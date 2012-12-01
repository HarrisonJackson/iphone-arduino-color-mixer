iphone-arduino-color-mixer
==========================

Demo Video:
http://www.youtube.com/watch?v=hqgcAuNUyR0


Tutorial Video:
http://www.youtube.com/watch?v=s9etKD2y-Zk

This is the source code and touchOSC file for an arduino/iphone project.  
Using the touchOSC application you are able to create custom UIs right on the phone.
Then we use Processing to hook our iphone gui up to the arduino for controlling 3 leds.

This tutorial is a great starting point for a more advanced arduino project.  You can
expand on the project to control something more exciting than 3 leds.  

Please note that this code is fairly old and has some processing dependencies that
might be hard to track down.

https://github.com/pardo-bsso/processing-arduino
Processing library to interact with arduino using Firmata.
This fork fixes the error

    Exception in thread "Animation Thread" java.lang.IllegalAccessError: tried to access class processing.core.PApplet$RegisteredMethods from class cc.arduino.Arduino$SerialProxy


