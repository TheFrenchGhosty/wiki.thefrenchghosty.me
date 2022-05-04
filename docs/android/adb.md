Note: on linux, ADB commands requires to be run as root to actually get access to the connected devices, if you ran ADB as an user, you need to kill the server as this user first.

# General commands

Kill ADB server:

```
adb kill-server
```

List ADB devices (make them ask to accept the signature):

```
adb devices
```

Open a shell to a device (device needs to be detected by `adb devices` first):

```
adb shell
```

# On-device shell commands

Note: `com.android.chrome` is the package name of Google Chrome, replace it with the package name of the application you want to be uninstalled

Uninstall any application (including system one) from the device (usually fail) (!DANGEROUS!):

```
pm uninstall -k com.android.chrome
```

Uninstall any application (including system one) from the user-side of the device (dangerous, but can be canceled with a device format/reset):

```
pm uninstall --user 0 com.android.chrome
```

Install an APK (stored on the device) without using the APK installer installed on the device (useful if it's broken)

```
pm install /path/to/file.apk
```
