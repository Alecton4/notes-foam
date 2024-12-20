---
sitemap:
  lastmod: 2024-04-16 +0000
  priority: 1.0
---

# Install openSUSE Tumbleweed on ThinkPad P1 Gen2

Last modified: 2024-04-16 +0000

**NOTE**: This note is first written when installing the `20230128` snapshot. Around one year later, a fresh installation of the `20240410` is performed.

## Before installation

1. Download the ISO image from [the official site](https://get.opensuse.org/tumbleweed/#download). Note that the images for installation and live OS are different.
2. Create a live USB stick.
   - Win10: I used [Rufus](https://rufus.ie/en/) with all default settings.
   - (`20240410`) openSUSE Tumbleweed: I used SUSE Studio Imagewriter (installed via `zypper install imagewriter`).

*References*:

- [SDB:Create a Live USB stick using Windows - openSUSE Wiki](https://en.opensuse.org/SDB:Create_a_Live_USB_stick_using_Windows)
- [SDB:Live USB stick - openSUSE Wiki](https://en.opensuse.org/SDB:Live_USB_stick)

## During installation

Refer to [the official Leap startup guide](https://doc.opensuse.org/documentation/leap/startup/html/book-startup/art-opensuse-installquick.html#sec-opensuse-installquick-install) and [the community guide](https://opensuse.github.io/openSUSE-docs-revamped-temp/yast_installer/) for more. Below are a few notable points.

### Network Settings

Skip configuring WiFi during installation.

### Disk

Below is my configuration:

- Use the bootloader from Windows which will be `/boot/efi`.
- A new separate partition for `/`.
- A new separate partition for `/home`.
- A new separate partition for `swap` which is large enough to support hibernation.

*References*:

- [the community guide](https://opensuse.github.io/openSUSE-docs-revamped-temp/yast_installer/#about-partition-schemes)

### Local User

Disable `Automatic Login`.

### Installation Settings

#### Booting

I changed `splash=silent quiet` to `splash=verbose`.

#### Software

No need to install many packages during installation. We can install them later.

## After installation

See [[tweak-P1-Gen2]] for tweaks after installation.

[//begin]: # "Autogenerated link references for markdown compatibility"
[tweak-P1-Gen2]: tweak-P1-Gen2.md "Tweak openSUSE Tumbleweed on ThinkPad P1 Gen2"
[//end]: # "Autogenerated link references"
