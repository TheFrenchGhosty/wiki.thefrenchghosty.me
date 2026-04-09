# Delete All .DS_Store Files from Your home Folder Automatically

Deleting .DS_Store files automatically is a pain in the ass on macOS, because cronjob aren't functioning properly, and most home folders are protected, this requires effectively making a "full" .app, giving it full disk access, then running that .app on a schedule.

### Open Automator

1. Open **Automator**
2. Click **New Document**
3. Select **Application** (not Workflow) → **Choose**

---

### Add a “Run Shell Script” Action

1. In the search box, type **“Run Shell Script”**
2. Drag **Run Shell Script** into the workflow area
3. In the shell script box, enter:

```
#!/bin/bash  
/usr/bin/find "$HOME" -type f -name .DS_Store -delete
```

---

### Save the Automator App

1. Go to **File → Save**
2. Name it something like:

DeleteDSStore.app

3. Save it somewhere like `/Applications/Utilities/`

---

### Grant Full Disk Access

1. Open **System Settings → Privacy & Security → Full Disk Access**
2. Click **+** → Add your DeleteDSStore.app
3. Make sure it is **toggled ON**

---

### Test it (optional)

- Double-click the app → It should silently delete `.DS_Store` files, including in Documents/Desktop.
- You can check by running:

```
find $HOME -type f -name .DS_Store 2>/dev/null
```

> If nothing shows, it worked.

### Make it Run Automatically

Create a macOS LaunchAgent:

`~/Library/LaunchAgents/com.delete.dsstore.plist`

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN"
"http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>Label</key><string>com.delete.dsstore</string>
    <key>ProgramArguments</key>
    <array>
      <string>/usr/bin/open</string>
      <string>-a</string>
      <string>/Applications/Utilities/DeleteDSStore.app</string>
    </array>
    <key>StartInterval</key><integer>300</integer>
    <key>StandardErrorPath</key>
       <string>/dev/null</string>
    <key>StandardOutPath</key>
       <string>/dev/null</string>
  </dict>
</plist>
```

The value of `StartInterval` set to 300 means it will run every 300 seconds, if you want it to run less (or more) often change this number.

Make the permission correct:

```
chown $(whoami) ~/Library/LaunchAgents/com.delete.dsstore.plist

chmod 644 ~/Library/LaunchAgents/com.delete.dsstore.plist
```

Make it actually trigger:

```
launchctl load ~/Library/LaunchAgents/com.delete.dsstore.plist
```

### Test that It's Running Properly

- Wait a bit 5-15 minutes
- Check that all the DS_Store files are gone:

```
find $HOME -type f -name .DS_Store 2>/dev/null
```

### If You Ever Want to Stop it

If you ever want to stop it:

```
launchctl unload ~/Library/LaunchAgents/com.delete.dsstore.plist
```

### Note if it Doesn't Work in Your Protected Folders

**Automator Apps Need Full Disk Access — Every Time You Edit Them**

On recent macOS version, Automator apps don’t _retain_ the permissions you gave them once you edit or rebuild them. macOS treats each new build of the app as a **different app**, so you must _remove and re‑add_ it in **System Settings → Privacy & Security → Full Disk Access** each time you change the app. 

**Fix:**

- Delete it from **Full Disk Access**
- Add it again
- Restart the Mac
- Then test the app

Simply toggling it on sometimes _doesn’t take effect_ until you reboot.

### Source:

- Me, TheFrenchGhosty, since DS_Store files are a pain anytime I use macOS
- An LLM (sorry, I didn't even know making stuff in Automator could be that powerful before the LLM told me) that I did babysit a lot, most of what is written was double/triple checked by me
