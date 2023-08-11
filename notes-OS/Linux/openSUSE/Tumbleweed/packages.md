# Package Management

- [Zypper](#zypper)
  - [Add repo](#add-repo)
    - [Packman and NVidia](#packman-and-nvidia)
    - [VSCode](#vscode)
    - [containers](#containers)
    - [NVIDIA Container Toolkit](#nvidia-container-toolkit)
    - [CUDA](#cuda)
    - [M17N (Multilingualization)](#m17n-multilingualization)
    - [Google Chrome](#google-chrome)
    - [Microsoft Edge](#microsoft-edge)
    - [Brave Browser](#brave-browser)
    - [Cloudflare WARP](#cloudflare-warp)
  - [Examine repo](#examine-repo)
    - [Some repo reference](#some-repo-reference)
  - [Set priority](#set-priority)
  - [Package query](#package-query)
    - [Unused Packages](#unused-packages)
    - [Installation History](#installation-history)
    - [Package Dependency](#package-dependency)
  - [Lock](#lock)
    - [Lock packages](#lock-packages)
    - [Lock patterns](#lock-patterns)
    - [List locks](#list-locks)
- [Install rpm](#install-rpm)
  - [WezTerm](#wezterm)
  - [Zoom](#zoom)
  - [WARP (manually)](#warp-manually)
  - [QQ](#qq)
  - [WeChat](#wechat)
  - [Xtreme Download Manager](#xtreme-download-manager)
  - [Motrix download manager](#motrix-download-manager)
  - [ToDesk](#todesk)
- [OBS Package Installer (OPI)](#obs-package-installer-opi)
  - [Install OPI](#install-opi)
- [Flatpak](#flatpak)
  - [Install Flatpak](#install-flatpak)
  - [Add repo](#add-repo-1)
  - [Uninstall unused packages](#uninstall-unused-packages)
  - [Interesting posts](#interesting-posts)
- [Become a Packager](#become-a-packager)

## Zypper

- [Package repositories](https://en.opensuse.org/Package_repositories)

### Add repo

#### Packman and NVidia

Open *YaST Software Repositories* and select *Add* >> *Community Repositories*.

Note that after this, *YaST Software* may automatically select some NVidia drivers to install. Do **not** install them because they will cause problems. See [[tweak-P1-Gen2#NVIDIA graphics card]].

#### VSCode

- Add *VSCode* repo (and install *VSCode*) by the following commands:

  ```bash
  rpm --import https://packages.microsoft.com/keys/microsoft.asc
  zypper addrepo https://packages.microsoft.com/yumrepos/vscode VSCode
  zypper refresh
  zypper install code
  ```

- Or use `opi vscode`.

*References*:

- [Wiki](https://en.opensuse.org/Visual_Studio_Code#Install)

#### containers

Add *Virtualization:containers* repo by the following commands:

```bash
zypper addrepo https://download.opensuse.org/repositories/Virtualization:containers/openSUSE_Tumbleweed/Virtualization:containers.repo
```

*References*:

- [docker from Virtualization:containers project](https://software.opensuse.org/download.html?project=Virtualization%3Acontainers&package=docker#manualopenSUSE)

#### NVIDIA Container Toolkit

1. Install NVIDIA drivers. See [[tweak-P1-Gen2#Install driver and prime-select]].
2. Add *NVIDIA Container Toolkit* repo by the following commands:

   ```bash
   zypper addrepo https://nvidia.github.io/libnvidia-container/opensuse-leap15.1/libnvidia-container.repo
   # The following one is the same
   zypper addrepo https://nvidia.github.io/libnvidia-container/sles15.1/libnvidia-container.repo
   ```

3. Install *NVIDIA Container Toolkit* by the following commands:

   ```bash
   zypper install nvidia-container-toolkit
   ```

4. Config *docker* by the following commands:

   ```bash
   nvidia-ctk runtime configure --runtime=docker
   ```

5. Verify installation by the following commands:

   ```bash
   docker run --rm --runtime=nvidia --gpus all nvidia/cuda:11.6.2-base-ubuntu20.04 nvidia-smi
   ```

*References*:

- [NVIDIA Container Toolkit](https://github.com/NVIDIA/nvidia-docker)
- [Installation Guide](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html)
- [package info details](https://github.com/NVIDIA/nvidia-docker/issues/1268#issuecomment-632692949)
- [How to use with Docker 19.03 / nvidia-container-toolkit?](https://github.com/NVIDIA/k8s-device-plugin/issues/168#issuecomment-625981223)

#### CUDA

Add *CUDA* repo by the following commands:

```bash
zypper addrepo -p 100 https://developer.download.nvidia.com/compute/cuda/repos/opensuse15/x86_64/cuda-opensuse15.repo
```

*References*:

- [CUDA on Tumbleweed](https://www.reddit.com/r/openSUSE/comments/gaihe9/cuda_on_tumbleweed/)

#### M17N (Multilingualization)

Add *M17N* repo by the following commands:

```bash
zypper addrepo https://download.opensuse.org/repositories/M17N/openSUSE_Tumbleweed/M17N.repo
```

#### Google Chrome

- Use the following commands:

  ```bash
  rpm --import https://dl.google.com/linux/linux_signing_key.pub
  zypper addrepo https://dl.google.com/linux/chrome/rpm/stable/x86_64 "Google Chrome"
  zypper refresh
  zypper install google-chrome-stable
  ```

- Or use `opi chrome`.

*References*:

- [Google Linux Software Repositories](https://www.google.com/linuxrepositories/)
- [Installing Google Chrome in openSUSE](https://linuxhint.com/installing-google-chrome-opensuse/)

#### Microsoft Edge

- Add *Microsoft Edge* repo (and install *Microsoft Edge*) by the following commands:

  ```bash
  rpm --import https://packages.microsoft.com/keys/microsoft.asc
  zypper addrepo https://packages.microsoft.com/yumrepos/edge "Microsoft Edge"
  zypper refresh
  zypper install microsoft-edge-stable
  ```

- Or use `opi msedge`.

#### Brave Browser

- Add *Brave* repo (and install *Brave*) by the following commands:

  ```bash
  rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
  zypper addrepo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
  zypper refresh
  zypper install brave-browser
  ```

- Or use `opi brave`.

*References*:

- [Installing Brave on Linux](https://brave.com/linux/)

#### Cloudflare WARP

- At the time of updating (*Tumbleweed 20230718, WARP 2023.7.40*), add *WARP* repo (and install *WARP*) by the following commands:

  ```bash
  zypper addrepo https://pkg.cloudflareclient.com/cloudflare-warp-ascii.repo
  zypper refresh
  zypper install cloudflare-warp
  ```

- See [[#WARP (manually)]] for manually installing *WARP*.

See [[WARP]] for configuration.

*References*:

- [Red Hat Enterprise Linux & CentOS](https://pkg.cloudflareclient.com/#rhel)

### Examine repo

- Use *YaST*.
- Or use `zypper repos -P`.

#### Some repo reference

![repos](attachments/Screenshot%202023-02-13%20151118.png)

### Set priority

- Use *YaST*.
- Or use `zypper modifyrepo -p`.

### Package query

#### Unused Packages

1. Use `zypper packages --unneeded` to examine.

2. Use `zypper packages --unneeded | grep ^i | cut -d '|' -f3 | xargs sudo zypper rm --clean-deps --no-confirm` to uninstall.

*References*:

- [Cleanup of distribution upgrades](https://forums.opensuse.org/t/cleanup-of-distribution-upgrades/152148)

#### Installation History

The history can be found in `/var/log/zypp/history`. Root permission might be needed.

#### Package Dependency

- Use `zypper info --requires SOME_PACKAGE` to check `SOME_PACKAGE`'s dependency.
- Use `zypper search --requires SOME_PACKAGE` to obtain packages that needs `SOME_PACKAGE`.

### Lock

#### Lock packages

- Use *YaST*.
- Or use `zypper addlock SOME_PACKAGE`.

#### Lock patterns

Use `zypper addlock --type pattern SOME_PATTERN`.

#### List locks

Use `zypper locks`.

## Install rpm

Use `zypper install PATH_TO_RPM`.

*References*:

- [10. Installing Software](https://opensuse-guide.org/installpackage.php)
- [how to install RPM files](https://forums.opensuse.org/t/how-to-install-rpm-files/24479)

### WezTerm

At the time of writing (*WezTerm 20230326.111934.3666303c-1.1* in official repo), **if you install WezTerm using `zypper install wezterm` from openSUSE's repo**, there is a bug that WezTerm leaves a file `dhat-heap.json` in the directory where it's opened on. Directly installing the official package could solve the problem. Go to [the official site](https://wezfurlong.org/wezterm/install/linux.html#installing-on-fedora-and-rpm-based-systems) to find the latest stable version.

### Zoom

- Download from [the official site](https://zoom.us/download?os=linux).
  - `ibus` could be locked before installing.
- Or use `opi zoom`.

*References*:

- [Installing or updating Zoom on Linux](https://support.zoom.us/hc/en-us/articles/204206269-Installing-or-updating-Zoom-on-Linux)
- [Does anyone here know of a good guide for installing zoom?](https://www.reddit.com/r/openSUSE/comments/p4yhg0/does_anyone_here_know_of_a_good_guide_for/)

### WARP (manually)

1. ~~At the time of writing (*Tumbleweed 20230518, WARP 2023.3.398*), install `setcap` via `zypper install libcap-progs`. Otherwise, the post-install script will fail to run.~~ At the time of updating (*Tumbleweed 20230718, WARP 2023.7.40*), no need to install `libcap-progs`.
   - At the time of updating (*Tumbleweed 20230718, WARP 2023.7.40*), zypper will report "nothing provides `dbus` needed". I just ignored it, and it worked well.
2. ~~Download from [the official site](https://pkg.cloudflareclient.com/packages/cloudflare-warp)~~. At the time of updating (*2023-06-21*), direct access to the package is forbidden.

See [[WARP]] for configuration.

*References*:

- [How to install Linux capabilities like setcap and getcap?](https://unix.stackexchange.com/questions/189237/how-to-install-linux-capabilities-like-setcap-and-getcap)

### QQ

Download from [the official site](https://im.qq.com/linuxqq/index.shtml).

### WeChat

- [ ] todo

*References*:

- [fedora 打包 wechat RPM 包](https://xuthus.cc/linux/fedora-packaged-wechat-rpm.html)

### Xtreme Download Manager

Download from [the official site](https://github.com/subhra74/xdm/releases).

### Motrix download manager

Download from [the official site](https://github.com/agalwood/Motrix/releases).

**NOTE**: At the time of writing (*Tumbleweed 20230518*), it does not work. I did not further investigate.

### ToDesk

Download from [the official site](https://www.todesk.com/linux.html).

## OBS Package Installer (OPI)

### Install OPI

Use `zypper install opi`.

## Flatpak

### Install Flatpak

Use `zypper install flatpak`.

### Add repo

Use the following commands:

```bash
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

*References*:

- [The community guide]( https://opensuse.github.io/openSUSE-docs-revamped-temp/best_of_post/#setup-your-tumbleweed-for-flatpaks )

### Uninstall unused packages

Use `flatpak uninstall --unused`.

### Interesting posts

- [Flatpak Is Not the Future](https://ludocode.com/blog/flatpak-is-not-the-future)
- [Hacker News discussion](https://news.ycombinator.com/item?id=29316024)

## Become a Packager

*References*:

- [Guide: How To Become A Packager](https://www.reddit.com/r/openSUSE/comments/10rpb24/guide_how_to_become_a_packager/)

[//begin]: # "Autogenerated link references for markdown compatibility"
[tweak-P1-Gen2#NVIDIA graphics card]: tweak-P1-Gen2.md "Tweak openSUSE Tumbleweed on ThinkPad P1 Gen2"
[tweak-P1-Gen2#Install driver and prime-select]: tweak-P1-Gen2.md "Tweak openSUSE Tumbleweed on ThinkPad P1 Gen2"
[#WARP (manually)]: packages.md "Package Management"
[WARP]: ../../../cross-platform/remote/WARP.md "Cloudflare WARP"
[//end]: # "Autogenerated link references"