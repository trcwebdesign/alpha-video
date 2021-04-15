---
id: build
title: Build
sidebar_label: Build
slug: /build
---

If you want to build the docker image on your system then make sure you have both Docker and Git installed on your system.

First we need to clone our code to do this run ``` git clone https://github.com/unofficial-skills/alpha-video ```. This dowload the code to the system. We need to open that directory ``` cd alpha-video ``` We are now in our code directory you can now run ``` docker build . -t alpha-video ```. Once this command has completed then we can runn it with the command ``` docker run -d --restart unless-stopped --name alpha-video -p 5000:5000 -e subdomain=changeme alpha-video:latest ```
