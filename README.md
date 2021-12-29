## DD-WRT Phone Home
---

A simple little bash / shell script that you can install on your [dd-wrt](https://dd-wrt.com/) router to make it phone home.

This is usefull if you have a whole bunch of remote [dd-wrt](https://dd-wrt.com/) routers and want a way to tell if one of the routers is offline or needs to be looked at in person.

## Installation
---
 1. Go to your dd-wrt router admin page.
 2. Click on ***Administration*** then ***Command*** tab.
 3. Paste in [script.sh](https://github.com/Llntrvr/dd-wrt-phonehome/blob/main/script.sh) into the ***Commands*** input box.
 ![Screenshot](screenshots/1.png)
 4. Click on the ***Save Startup*** button.
 5. Paste in ```/bin/sh /tmp/phonehome.sh shutdown``` into the ***Commands*** input box.
 ![Screenshot](screenshots/2.png)
 6. Click on the ***Save Shutdown*** button.
 7. Click on ***Administration*** then ***Management*** tab.
 8. Scroll down to the ***Cron*** area.
 9. Click on ***Enable*** cron option.
 ![Screenshot](screenshots/3.png)
 10. Click on the ***Save*** button.
 11. Click on the ***Apply Settings*** button.
 12. Click on the ***Reboot Router*** button.


 
 
