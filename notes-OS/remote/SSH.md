---
sitemap:
  lastmod: 2024-09-23 +0000
  priority: 1.0
---

# SSH Usage

Last modified: 2024-09-23 +0000

- [Interesting posts](#interesting-posts)
- [Create SSH key pair](#create-ssh-key-pair)
- [Generate public key from private key](#generate-public-key-from-private-key)
- [Automatically accept host key](#automatically-accept-host-key)
- [Show all active SSH connections](#show-all-active-ssh-connections)
- [Kill idle SSH sessions](#kill-idle-ssh-sessions)
- [Kill idle `sshd`s](#kill-idle-sshds)
- [Remote port forwarding](#remote-port-forwarding)
    - [Scenario I](#scenario-i)
- [SCP](#scp)

## Interesting posts

- [ssh - Does known_hosts support comments? - Server Fault](https://serverfault.com/questions/750840/does-known-hosts-support-comments)
- [scp with port number specified - Stack Overflow](https://stackoverflow.com/questions/10341032/scp-with-port-number-specified)
- [linux - `ssh <host>` is a login shell, but `ssh <host> <command>` is not? - Super User](https://superuser.com/questions/1224938/ssh-host-is-a-login-shell-but-ssh-host-command-is-not)
- [Does ssh run commands (rather than shell itself) in a login shell? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/744263/does-ssh-run-commands-rather-than-shell-itself-in-a-login-shell)
- [openssh - Is there a way for one SSH config file to include another one? - Super User](https://superuser.com/questions/247564/is-there-a-way-for-one-ssh-config-file-to-include-another-one)
- [macos - What's wrong with my OpenSSH Include directive? - Super User](https://superuser.com/questions/1162387/whats-wrong-with-my-openssh-include-directive)
- [How to create a bash script to check the SSH connection? - Stack Overflow](https://stackoverflow.com/questions/1405324/how-to-create-a-bash-script-to-check-the-ssh-connection)
- [How to Show All Active SSH Connections in Linux - Make Tech Easier](https://www.maketecheasier.com/show-active-ssh-connections-linux/)

## Create SSH key pair

Generate a new key via `ssh-keygen -t ed25519 -C "YOUR_EMAIL"`.

*References*:

- [Generating a new SSH key and adding it to the ssh-agent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

## Generate public key from private key

Generate the public key via `ssh-keygen -f PATH_TO_PRI_KEY -y > PATH_TO_PUB_KEY`.

*References*:

- [encryption - Create a public SSH key from the private key? - Server Fault](https://serverfault.com/questions/52285/create-a-public-ssh-key-from-the-private-key)

## Automatically accept host key

Use the flag `-o "StrictHostKeyChecking no"`.

*References*:

- [ssh - Auto accept rsa key fingerprint from command line - Server Fault](https://serverfault.com/questions/638600/auto-accept-rsa-key-fingerprint-from-command-line)
- [scripts - ssh: automatically accept keys - Ask Ubuntu](https://askubuntu.com/questions/123072/ssh-automatically-accept-keys)

## Show all active SSH connections

*References*:

- [How to Show All Active SSH Connections in Linux](https://www.maketecheasier.com/show-active-ssh-connections-linux/)

## Kill idle SSH sessions

Hit subsequently `Enter` > `~` > `.`.

*References*:

- [How can I break out of ssh when it locks?](https://askubuntu.com/questions/29942/how-can-i-break-out-of-ssh-when-it-locks)

## Kill idle `sshd`s

Use `ps fxw | grep pts/` to determine which PID to `kill`.

*References*:

- [linux - Stop sshd and kill ongoing connections - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/548710/stop-sshd-and-kill-ongoing-connections)

## Remote port forwarding

*References*:

- [How to Set up SSH Tunneling (Port Forwarding) \| Linuxize](https://linuxize.com/post/how-to-setup-ssh-tunneling/)
- [彻底搞懂SSH端口转发命令 - 知乎](https://zhuanlan.zhihu.com/p/148825449)

### Scenario I

The local machine (**Host A**) can establish SSH connections with both **Server B** and **Server C**, but **Server B** and **Server C** cannot reach each other.

However, we want to access a GitLab service on **Server C** via SSH from **Server B**. This is where remote port forwarding is useful.

On the local machine (**Host A**), we use the following `.ssh/config`:

```ssh-config
Host Server-B
    HostName ADDRESS_OF_SERVER_B
    User USERNAME_ON_SERVER_B
    RemoteForward AVAILABLE_PORT_ON_SERVER_B(say 11111) ADDRESS_OF_SERVER_C:DESTINATION_PORT_ON_SERVER_C(say 22)
```

On **Server B**, we use the following `.ssh/config`:

```ssh-config
Host ADDRESS_OF_SERVER_C
    HostName 127.0.0.1
    Port 11111(corresponding to AVAILABLE_PORT_ON_SERVER_B)
    User git
    IdentityFile PRIVATE_KEY
```

Then, after establishing an SSH connection to **Server B** from the local machine (**Host A**), we can access some services on **Server C** from **Server B**.

For example, the following command will work perfectly fine on **Server B**:

```bash
git clone git@ADDRESS_OF_SERVER_C:PATH/TO/REPO.git
scp -P AVAILABLE_PORT_ON_SERVER_B USER@127.0.0.1:/PATH/TO/FILE ~/tmp
```

## SCP

*References*:

- [How to copy all files from a directory to a remote directory using scp? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/232946/how-to-copy-all-files-from-a-directory-to-a-remote-directory-using-scp)
- [time - Why is scp so slow and how to make it faster? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/238152/why-is-scp-so-slow-and-how-to-make-it-faster)
