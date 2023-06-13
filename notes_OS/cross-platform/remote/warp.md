# Warp

*References*:

- [The official doc](https://developers.cloudflare.com/warp-client/)

## Linux

### Commonly used subcommands

- Check account details via `warp-cli account`.
- Update license key via `warp-cli set-license NEW_LICENSE_KEY`.
- Change mode via `warp-cli set-mode NEW_MODE`.

### All subcommands (*warp-cli 2023.3.398*)

<details>

| Subcommand                    | Meaning                                                                                                                         |
| ----------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `register`                    | Register with the WARP API, replacing any existing registration (Must be run before first connection!)                          |
| `teams-enroll`                | Enroll with Cloudflare for Teams                                                                                                |
| `delete`                      | Delete current registration                                                                                                     |
| `rotate-keys`                 | Generate a new key-pair, keeping the current registration                                                                       |
| `status`                      | Ask the daemon to send the current status                                                                                       |
| `warp-stats`                  | Retrieve the stats for the current WARP connection                                                                              |
| `warp-dns-stats`              | Retrieve the DNS stats for the current WARP connection                                                                          |
| `settings`                    | Retrieve the current application settings                                                                                       |
| `connect`                     | Connect to WARP whenever possible [aliases: enable-always-on]                                                                   |
| `disconnect`                  | Disconnect from WARP [aliases: disable-always-on]                                                                               |
| `disable-wifi`                | Automatically disable WARP on Wi-Fi networks (disabled for Zero Trust customers)                                                |
| `enable-wifi`                 | Allow WARP on Wi-Fi networks (disabled for Zero Trust customers)                                                                |
| `disable-ethernet`            | Automatically disable WARP on ethernet networks (disabled for Zero Trust customers)                                             |
| `enable-ethernet`             | Allow WARP on ethernet networks (disabled for Zero Trust customers)                                                             |
| `add-trusted-ssid`            | Add a trusted Wi-Fi network for which WARP will be automatically disconnected                                                   |
| `remove-trusted-ssid`         | Remove a trusted Wi-Fi network                                                                                                  |
| `exclude-private-ips`         | Exclude private IP ranges from tunnel                                                                                           |
| `enable-dns-log`              | Enable DNS logging (Use with the -l option)                                                                                     |
| `disable-dns-log`             | Disable DNS logging                                                                                                             |
| `account`                     | Display the account associated with the current registration                                                                    |
| `devices`                     | Display the list of devices associated with the current registration                                                            |
| `network`                     | Display the current network information                                                                                         |
| `get-virtual-networks`        | List the available virtual networks                                                                                             |
| `set-virtual-network`         | Set the currently connected virtual network via the id from get-virtual-networks                                                |
| `set-mode`                    | Set the mode                                                                                                                    |
| `set-families-mode`           | Set the families mode                                                                                                           |
| `set-license`                 | Attach the current registration to a different account using a license key                                                      |
| `set-gateway`                 | Force the app to use the specified Gateway ID for DNS queries                                                                   |
| `clear-gateway`               | Clear the Gateway ID                                                                                                            |
| `set-custom-endpoint`         | Force the client to connect to the specified IP:PORT endpoint (Zero Trust customers must run this command as a privileged user) |
| `clear-custom-endpoint`       | Remove the custom endpoint setting                                                                                              |
| `add-excluded-route`          | Add an excluded IP                                                                                                              |
| `remove-excluded-route`       | Remove an excluded IP                                                                                                           |
| `get-excluded-routes`         | Get the list of excluded routes                                                                                                 |
| `get-included-routes`         | Get the list of included routes                                                                                                 |
| `get-excluded-hosts`          | Get the list of excluded hosts                                                                                                  |
| `get-included-hosts`          | Get the list of included hosts                                                                                                  |
| `add-excluded-host`           | Add an excluded host                                                                                                            |
| `remove-excluded-host`        | Remove an excluded host                                                                                                         |
| `add-fallback-domain`         | Add a domain that should be resolved with the fallback resolver instead of WARP's                                               |
| `remove-fallback-domain`      | Stop a domain from being resolved with the fallback resolver                                                                    |
| `get-fallback-domains`        | Get the list of domains that go to the fallback resolver                                                                        |
| `restore-fallback-domains`    | Restore the list of fallback resolver domains to its default value                                                              |
| `get-device-posture`          | Get the current device posture                                                                                                  |
| `override`                    | Temporarily override MDM policies that require the client to stay enabled                                                       |
| `set-proxy-port`              | Set the listening port for WARP proxy (127.0.0.1:{port})                                                                        |
| `is-mode-switch-allowed`      | Outputs true if Teams users should be able to change connection mode, or false if not                                           |
| `reset-settings`              | Restore settings to default                                                                                                     |
| `get-organization`            | Get the name of the Teams organization currently in settings                                                                    |
| `access-reauth`               | Force refresh authentication with Cloudflare Access                                                                             |
| `get-support-url`             | Get the support url for the current Teams organization                                                                          |
| `get-pause-end`               | Retrieve the pause end time                                                                                                     |
| `get-override-end`            | Retrieve the admin override end time                                                                                            |
| `disable-connectivity-checks` | Disable the runtime connectivity checks                                                                                         |
| `enable-connectivity-checks`  | Enable the runtime connectivity checks                                                                                          |
| `dump-excluded-routes`        | Get split tunnel routing dump. For include-only mode, this shows routes NOT included                                            |
| `get-alternate-network`       | Get the name of the currently detected alternate network, if any                                                                |
| `get-dex-data`                | Get the most recently uploaded DEX data. Returns the most recent test for each dex metric                                       |
| `help`                        | Print this message or the help of the given subcommand(s)                                                                       |

</details>

### Unable to connect to CloudflareWARP daemon

*References*:

- [\[SOLVED\] Cloudflare warp daemon error when register the client](https://community.cloudflare.com/t/solved-cloudflare-warp-daemon-error-when-register-the-client/281977)

## Warp+

*References*:

- https://www.youtube.com/watch?v=bqGc-ucrCCk
- https://www.youtube.com/watch?v=lFUh8Mr-Pi8
- https://kjgx668.blogspot.com/2023/05/2023vpn-warpwarpipioswarpwarpip.html
- https://kjgx668.blogspot.com/2023/05/vpn-warpwarpipioswarpwarpipwarpendpoint.html