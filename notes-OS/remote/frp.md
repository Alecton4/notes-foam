# frp

*References*:

- https://github.com/fatedier/frp
- [安装](https://gofrp.org/docs/setup/)
- [使用 systemd](https://gofrp.org/docs/setup/systemd/)
- [frp怎样开机启动和后台运行?](https://github.com/fatedier/frp/issues/176)

## SSH

*References*:

- [通过 SSH 访问内网机器](https://gofrp.org/docs/examples/ssh/)
- [proxy name [ssh] is already in use](https://github.com/fatedier/frp/issues/458#issuecomment-711144139)

### Bash Alias

Add the following to `~/.bash_aliases`:

```bash
alias frp='~/.frp/frpc --config ~/.frp/frpc.ini'
```
