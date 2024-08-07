---
sitemap:
  lastmod: 2024-06-11 +0000
---

# Visual Studio Code

Last modified: 2024-06-11 +0000

- [Interesting posts](#interesting-posts)
- [Installation](#installation)
- [Multi cursor](#multi-cursor)
- [Cloud Changes (Edit Session)](#cloud-changes-edit-session)
- [Regex search and replace](#regex-search-and-replace)
- [KWallet Related](#kwallet-related)
- [Customization](#customization)
  - [Color customization](#color-customization)
  - [Textmate rules](#textmate-rules)
  - [Disable middle click pasting](#disable-middle-click-pasting)
- [Extensions](#extensions)
  - [Where are extensions installed?](#where-are-extensions-installed)
  - [Todo Tree](#todo-tree)

## Interesting posts

- [Visual Studio Code is designed to fracture](https://ghuntley.com/fracture/)

## Installation

- openSUSE: [[package#VSCode]]

## Multi cursor

*References*:

- [Multi cursor selection](https://code.visualstudio.com/docs/getstarted/tips-and-tricks#_multi-cursor-selection)
- [Quick VS Code tip: skip selections when using Ctrl|Cmd + D - DEV Community](https://dev.to/codepo8/quick-vs-code-tip-skip-selections-when-using-ctrlcmd-d-36me)
- [vscode 同时编辑多处，多个光标 快捷键_好菜的程序媛的博客-CSDN博客_vscode多行光标](https://blog.csdn.net/Gomeer/article/details/91417928)

## Cloud Changes (Edit Session)

*References*:

- [Edit Sessions -> Cloud Changes #165877](https://github.com/microsoft/vscode/pull/165877#issuecomment-1357545069)

## Regex search and replace

Some examples:

- Use `(lib[a-z]*[0-9][0-9])` (note the parentheses) to match `libavcodec56`, `libavcodec57`, `libavcodec58`, `libavformat56`, `libavformat57`, `libavformat58`, `libavdevice56`, `libavdevice57`, `libavdevice58` in the search field.

  Refer to them using `$1` in the replace field.

- Use `\$\{([a-zA-Z_]+[a-zA-Z0-9_]*)\}` (note the parentheses) to match `${ENV_VAR}`, `${env}, ${_FOOBAR_}` in the search field.

  Remove the braces (`{}`) around them (while keeping `$`) using `$$$1` in the replace field.

*References*:

- [VS Code: Search-and-Replace Regex - DEV Community](https://dev.to/rfornal/vs-code-search-and-replace-regex-mn2)
- [VS Code: Search-and-Replace Regex with Dollar-Sign - DEV Community](https://dev.to/rfornal/vs-code-search-and-replace-regex-with-dollar-sign-4bph)
- [🔎 vscode \| regex find and replace](https://www.youtube.com/watch?v=xMhKstbdr3k)
- [How to remove empty line in VSCode? - Manish Sharma - Medium](https://medium.com/@manish90/how-to-remove-empty-line-in-vscode-fd3716958787)

## KWallet Related

See [[KDE#KWallet & VSCode]].

## Customization

### Color customization

*References*:

- [Visual Studio Code and VS Code icons and names usage guidelines](https://code.visualstudio.com/brand#brand-colors)
- [VSCode default colors](https://github.com/microsoft/vscode/tree/main/src/vs/platform/theme/common/colors)
- [VSCode terminal colors](https://github.com/microsoft/vscode/blob/main/src/vs/workbench/contrib/terminal/common/terminalColorRegistry.ts)
- [VSCode default themes](https://github.com/microsoft/vscode/tree/main/extensions/theme-defaults/themes)
  - Local path on Linux: `/usr/share/code/resources/app/extensions/theme-defaults/themes/`
- [Colour List \| SAP Help Portal](https://wiki.scn.sap.com/wiki/display/Img/Colour+List)

### Textmate rules

*References*:

- [Language Grammars — TextMate 1.x Manual](https://macromates.com/manual/en/language_grammars)

### Disable middle click pasting

Set `editor.selectionClipboard` to `false`.

*References*:

- [Disable middle-click paste · Issue #14610 · microsoft/vscode](https://github.com/microsoft/vscode/issues/14610)

## Extensions

### Where are extensions installed?

- Windows `%USERPROFILE%\.vscode\extensions`
- macOS `~/.vscode/extensions`
- Linux `~/.vscode/extensions`

*References*:

- [Managing Extensions in Visual Studio Code](https://code.visualstudio.com/docs/editor/extension-marketplace#_where-are-extensions-installed)

### Todo Tree

Some config examples:

- Haskell: `((--\\s*($TAGS))|\\{-\\s($TAGS).*(\\n.*)*-})`
- JavaDoc: `(//|#|<!--|/\\*|^\\s*\\*)\\s*($TAGS)`
- LaTeX: `((//|#|<!--|;|/\\*|^|%|\\\\)\\s*($TAGS)\\{*|^\\s*- \\[ \\])`
- Markdown: `((//|#|<!--|;|/\\*|^)\\s*($TAGS)|^//\\s*\\[x\\]|^//\\s*\\[ \\])`
- Rust: `((//|#|<!--|;|/\\*|^)\\s*($TAGS)|($TAGS)!.*)`

*References*:

- [Configuration Examples · Gruntfuggly/todo-tree Wiki](https://github.com/Gruntfuggly/todo-tree/wiki/Configuration-Examples)

[//begin]: # "Autogenerated link references for markdown compatibility"
[package#VSCode]: Linux/openSUSE/package.md "openSUSE Package Management"
[KDE#KWallet & VSCode]: Linux/KDE.md "KDE Plasma Tweak"
[//end]: # "Autogenerated link references"
