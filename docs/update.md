---
id: update
title: Auto Update
sidebar_label: Auto Update
---

You can now setup auto updates for the skill and its easy to do so. Open a terminal on your device and type the following command.  
``` docker run -d --name dockupdater --restart unless-stopped -v /var/run/docker.sock:/var/run/docker.sock dockupdater/dockupdater ```.

The part of the command which says changeme, change this to somthing unique to you. If you choose something generic like youtube then someone else will probably have already claimed the domain. A good example is andrewstech7863 . After you have changed that then run the command. It should start downloading multiple files and give you an output such as 3493783796b56777987287120c5e3d4defa418d58825d22aa7b1a7c96dfa6604. This means the code has been installed. Now we need to see if our unique domain was avalible.

Run docker logs followed by the number you just copyed. For example docker logs 3493783796b56777987287120c5e3d4defa418d58825d22aa7b1a7c96dfa6604.

This should show the logs of the skill and at the bottom you should see the line your url is: Followed by the url. If your unique domain is available it should dissplay your unique-domain followed by .loca.lt. If it was not available it would have generated a random one. If the domain is a random one then it will change on every startup.
