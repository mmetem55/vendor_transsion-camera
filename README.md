# Transsion Camera

Ported Transsion stock Camera application for Android 16.

The application was decompiled from the stock firmware, unnecessary telemetry and data collection components were removed.

Tested successfully on:

* Infinix Hot 40 Pro (X6837)
* LineageOS 23.2
* Android 16

Google Photos is required for the application to work correctly.

## Recompile

```bash
java -jar apktool.jar b TranssionCamera -o TranssionCamera.apk
```

## LineageOS Integration

Add the following to `device.mk`:

```makefile
# Transsion Camera

$(call inherit-product, vendor/transsion-camera/camera.mk)
```

Repository path:

```text
vendor/transsion-camera/
```

## Disclaimer

This project is not affiliated with Transsion, Infinix, or LineageOS. The original application and its intellectual property belong to their respective owners.
