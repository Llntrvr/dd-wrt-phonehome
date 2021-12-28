## DD-WRT Phone Home
---

A simple little bash / shell script that you can install on your [dd-wrt](https://dd-wrt.com/) router to make it phones home.

This is usefull if you have a whole bunch of remote [dd-wrt](https://dd-wrt.com/) routers and want a way to tell if one of the routers is offline or needs to be looked at in person.

## Installation
---
 1. Go to your dd-wrt router admin page.
 2. Click on **Administration** then **Command** tab.
 3. Paste in scripts.sh into the **Commands** input box.
 4. Click on the **Save Startup** button.
 5. Paste in ```/bin/sh /tmp/phonehome.sh shutdown``` into the **Commands** input box.
 6. Click on the **Save Shutdown** button.
 7. Click on **Administration** then **Management** tab.
 8. Scroll down to the **Cron** area.
 9. Click on **Enable** cron option.
 10. Paste in ```*/30 * * * * /bin/sh /tmp/phonehome.sh ping``` into the **Additional Cron Jobs** input box.
 11. Click on the **Save** button.
 12. Click on the **Apply Settings** button.
 13. Click on the **Reboot Router** button.
 
 
