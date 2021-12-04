---
title: Bibliogram's Janky Setup
description: 
published: true
date: 2021-12-04T17:20:52.032Z
tags: 
editor: markdown
dateCreated: 2021-12-04T17:20:52.032Z
---

# Bibliogram's Janky Setup

## Why?

Bibliogram's docker image is "bad", it should be able to run, but for a production setup (like the [PussTheCat.org instance](https://bibliogram.pussthecat.org/)) it's not "good enough", so it has to run on "metal".

## Explanation of the janky setup

### The deployment:

My Bibliogram instance is setup with [bibliogram-updater](https://git.sr.ht/~cadence/bibliogram-updater) (because the nodejs version shipped by my distribution break it), run in a `screen` session.

Bibliogram has a tendency to crash (it's rare but it happens), it's run in a while loop that automatically restart it: `while true; do ./run.fish; done`.

### The big, bad bug:

After being run for around 1 month, Bibliogram will bug out, and it will "force" NginX to create dozens/hundreds of child process (until the CPU is pinned at 100%), a "quick" fix when it happen is to restart Bibliogram.

Bibliogram has to be restarted, and to be safe, I restart it every 6 hours.


So how to make it restart then? Well, we have a loop that restart the instance when it breaks... so... we just have to break the instance.

### How to break the instance?

There's a cool tool that I recently discovered called `pkill` it kills a process named exactly in a certain way (because I can't just `killall node`, other stuff run via node)

So to have it automatically restart every 6 hours... we just make a cron that `pkill` the Bibliogram node process (`node server.js`), and because bibliogram-updater doesn't check if the node process is still alive (or not)... we also kill the bibliogram-updater scripts (`run.fish`).

This is the cronjobs:

```
0 */6 * * * pkill -f "node server.js"
0 */6 * * * pkill -f "run.fish"
```

## Conclusion

Obviously, as you can see it's really janky, and I ideally would like to run Bibliogram via docker... but as a janky way to have a good and stable instance (with almost 100% uptime)... it works, and that's what matters!

In the end, if it works, and if it can be maintained, it's *fine* (*famous last words*).
