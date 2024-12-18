---
sitemap:
  lastmod: 2024-11-18 +0000
---

# Terminal Related Tools

Last modified: 2024-11-18 +0000

- [Interesting posts](#interesting-posts)
- [Kitty](#kitty)
- [WezTerm](#wezterm)
  - [Installation](#installation)
  - [My Config](#my-config)
  - [Default Keybinding](#default-keybinding)
- [tmux](#tmux)
- [Zellij](#zellij)

## Interesting posts

- [Which Terminal Emulator Should You Use? \| Sharp Writing](https://www.sharpwriting.net/project/best-terminal-emulator/)
- [duplicate input to multiple panes · Issue #2658 · wez/wezterm](https://github.com/wez/wezterm/issues/2658)
- [terminal - List of ANSI color escape sequences - Stack Overflow](https://stackoverflow.com/questions/4842424/list-of-ansi-color-escape-sequences)
- [ANSI Escape Codes](https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797)

## Kitty

*References*:

- [Kitty Only uses Dark colors · Issue #197 · kovidgoyal/kitty](https://github.com/kovidgoyal/kitty/issues/197)
- [Opacity setting persisting in Full Screen Mode on MacOS · Issue #1405 · kovidgoyal/kitty](https://github.com/kovidgoyal/kitty/issues/1405)
- [How to set the opacity while using Kitty? : r/KittyTerminal](https://www.reddit.com/r/KittyTerminal/comments/11bskzl/how_to_set_the_opacity_while_using_kitty/)

## WezTerm

*References*:

- [Wezterm's transparency : r/neovim](https://www.reddit.com/r/neovim/comments/17s5xww/wezterms_transparency/)
- [Tab bar font size not working · Issue #3800 · wez/wezterm](https://github.com/wez/wezterm/issues/3800)
- [Regression: Unable to set cursor to xterm: cursor not found · Issue #4681 · wez/wezterm](https://github.com/wez/wezterm/issues/4681)

### Installation

- openSUSE: [[package#WezTerm]]

*References*:

- [A GPU-accelerated cross-platform terminal emulator and multiplexer written by @wez and implemented in Rust](https://github.com/wez/wezterm)

### My Config

Save the following to `~/.config/wezterm/wezterm.lua`:

```lua
local wezterm = require "wezterm"
local config = {}

config.enable_scroll_bar = true
config.font = wezterm.font_with_fallback {
  { family = "Cascadia Code", harfbuzz_features = { "liga", "calt", "ss03", "ss20", "zero" }, },
  { family = "Sarasa Mono HC", },
  { family = "MesloLGS Nerd Font", },
}
config.font_size = 10
config.inactive_pane_hsb = {
  saturation = 0.60,
  brightness = 0.60,
}
config.initial_cols = 128
config.initial_rows = 32
config.window_background_opacity = 0.75

-- ================================
-- custom colors
-- ================================
config.colors = {
  -- Use `AnsiColor` to specify one of the ansi color palette values
  -- (index 0-15) using one of the names
  -- "Black", "Maroon", "Green", "Olive", "Navy", "Purple", "Teal", "Silver",
  -- "Grey", "Red", "Lime", "Yellow", "Blue", "Fuchsia", "Aqua" or "White".
  ansi = { "#000000", "#CD3131", "#4E9A06", "#FFCC00", "#01A0E4", "#9F00FF", "#80CBC4", "#E5E5E5", },
  brights = { "#707880", "#F14C4C", "#A6E22E", "#FDED02", "#89DDFF", "#CF8DFB", "#A1EFE4", "#FFFFFF", },
  -- The default text color
  foreground = "#FFFFFF",
  -- The default background color
  background = "#000000",
  -- Overrides the cell background color when the current cell is occupied by the
  -- cursor and the cursor style is set to Block
  cursor_bg = "#FFA31A",
  -- Overrides the text color when the current cell is occupied by the cursor
  cursor_fg = "#000000",
  -- Specifies the border color of the cursor when the cursor style is set to Block,
  -- or the color of the vertical or horizontal bar when the cursor style is set to
  -- Bar or Underline.
  cursor_border = "#52AD70",
  -- The color of the scrollbar "thumb"; the portion that represents the current viewport
  scrollbar_thumb = "#808080",
  -- The color of the split lines between panes
  split = "#808080",
}

-- ================================
-- custom key bindings
-- ================================
config.mouse_bindings = {
  {
    event = { Down = { streak = 1, button = "Middle" } },
    mods = "NONE",
    action = wezterm.action.Nop,
  },
}

return config
```

*References*:

- [Configuration - Wez's Terminal Emulator](https://wezfurlong.org/wezterm/config/files.html)
- [Font Shaping - Wez's Terminal Emulator](https://wezfurlong.org/wezterm/config/font-shaping.html)
- [Configuring wezterm (Wez’s Terminal Emulator)](https://www.sharpwriting.net/project/configuring-wezterm/)

### Default Keybinding

*References*:

- [Official doc](https://wezfurlong.org/wezterm/config/default-keys.html)

## tmux

From GPT-4o-Mini:

> To get the PID of the main process running in a tmux pane (instead of the shell itself), you can use the following command:
>
> ```bash
> tmux list-panes -F "#{pane_id} #{pane_pid}" | awk '{print $1}' | xargs -I{} sh -c 'ps -o pid= --ppid $(tmux display-message -p -t {} "#{pane_pid}")'
> ```
>
> ### Explanation
>
> 1. **`tmux list-panes -F "#{pane_id} #{pane_pid}"`**: Lists all panes along with their IDs and PIDs.
> 2. **`awk '{print $1}'`**: Extracts the pane IDs.
> 3. **`xargs -I{}`**: For each pane ID, it runs the command inside the curly braces.
> 4. **`sh -c 'ps -o pid= --ppid $(tmux display-message -p -t {} "#{pane_pid}")'`**:
>    - `tmux display-message -p -t {} "#{pane_pid}"`: Gets the PID of the shell in that pane.
>    - `ps -o pid= --ppid <shell_pid>`: Lists child processes of that shell.
>
> ### Usage
>
> To get the main process running in a specific pane (e.g., pane 1.0), you can also run:
>
> ```bash
> tmux display-message -p -t 1.0 "#{pane_pid}" | xargs -I{} ps -o pid= --ppid {}
> ```
>
> This will give you the PID of the process running in that pane, assuming it has child processes. If there are multiple child processes, it will list all of them.
>
> If you want to find the most relevant child process (typically the first one), you can further refine the command.

*References*:

- [Getting Started · tmux/tmux Wiki](https://github.com/tmux/tmux/wiki/Getting-Started)
- [Tmux Tutorial: Mastering the Basics \| Linux Training Academy](https://www.linuxtrainingacademy.com/tmux-tutorial/)
- [A beginner's guide to tmux \| Enable Sysadmin](https://www.redhat.com/sysadmin/introduction-tmux-linux)
- [tmux - ArchWiki](https://wiki.archlinux.org/title/tmux)
- [tmux(1) - Linux manual page](https://man7.org/linux/man-pages/man1/tmux.1.html)
- [tmux(1) - OpenBSD manual pages](http://man.openbsd.org/OpenBSD-current/man1/tmux.1)
- [tmux cheatsheet](https://gist.github.com/andreyvit/2921703)
- [How can I search within the output buffer of a tmux shell? - Super User](https://superuser.com/questions/231002/how-can-i-search-within-the-output-buffer-of-a-tmux-shell)
- [vim - How do I cycle through panes inside a window in tmux like in screen? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/53154/how-do-i-cycle-through-panes-inside-a-window-in-tmux-like-in-screen)
- [Is it possible to send input to a tmux session without connecting to it? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/409861/is-it-possible-to-send-input-to-a-tmux-session-without-connecting-to-it)
- [How to send a command to all panes in tmux? - Stack Overflow](https://stackoverflow.com/questions/16325449/how-to-send-a-command-to-all-panes-in-tmux)
- [tmux send-keys syntax - Stack Overflow](https://stackoverflow.com/questions/19313807/tmux-send-keys-syntax)
- [cron - How to send a CTRL+C to a tmux pane using crontab? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/614197/how-to-send-a-ctrlc-to-a-tmux-pane-using-crontab)
- [bash - Run command in new background tmux window and wait for process to finish - Stack Overflow](https://stackoverflow.com/questions/60365501/run-command-in-new-background-tmux-window-and-wait-for-process-to-finish)
- [Getting command running in a tmux pane - Stack Overflow](https://stackoverflow.com/questions/46134090/getting-command-running-in-a-tmux-pane)
- [Wait for program(s) in tmux panes to end… – select * from depesz;](https://www.depesz.com/2019/05/13/wait-for-programs-in-tmux-panes-to-end/)
- [unix - How to close a tmux session - Super User](https://superuser.com/questions/777269/how-to-close-a-tmux-session)
- [Super Guide to the split-window tmux Subcommand (and Beyond)](https://gist.github.com/sdondley/b01cc5bb1169c8c83401e438a652b84e)
- [shell - How to send commands when opening a tmux session inside another tmux session? - Stack Overflow](https://stackoverflow.com/questions/8518815/how-to-send-commands-when-opening-a-tmux-session-inside-another-tmux-session)

## Zellij

*References*:

- [A terminal workspace with batteries included](https://github.com/zellij-org/zellij)

[//begin]: # "Autogenerated link references for markdown compatibility"
[package#WezTerm]: openSUSE/package.md "openSUSE Package Management"
[//end]: # "Autogenerated link references"
