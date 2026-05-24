# dot-files

My personal macOS development environment. Built around [Ghostty](https://ghostty.org), [Neovim](https://neovim.io) (LazyVim-based), [tmux](https://github.com/tmux/tmux), and [Starship](https://starship.rs).

![preview](https://img.shields.io/badge/theme-Tokyo%20Night-7aa2f7?style=flat-square&logo=neovim)
![platform](https://img.shields.io/badge/platform-macOS-000000?style=flat-square&logo=apple)

---

## What's inside

| Tool | Config | Description |
|------|--------|-------------|
| **Ghostty** | `.config/ghostty/config` | Terminal — Solarized Dark Patched theme, PlemolJP Console NF font |
| **Starship** | `.config/starship/starship.toml` | Prompt — official Tokyo Night powerline preset + username |
| **Tmux** | `.config/tmux/` | Multiplexer — Solarized theme, modular config |
| **Neovim** | `.config/nvim/` | Editor — LazyVim + solarized-osaka, Telescope, Copilot |
| **Zsh** | `.zshrc` / `.zprofile` | Shell — eza, fzf, ghq, lazygit aliases |

---

## Prerequisites

Install these with [Homebrew](https://brew.sh):

```sh
brew install neovim tmux starship fzf ghq eza lazygit git-delta
```

Install the font (required for Starship powerline arrows and Neovim icons):

```sh
brew install --cask font-plemol-jp-nf
```

---

## Install

Clone and symlink configs into place:

```sh
git clone https://github.com/aniketor/dot-files.git ~/dot-files
cd ~/dot-files

# Shell
ln -sf ~/dot-files/.zshrc ~/.zshrc
ln -sf ~/dot-files/.zprofile ~/.zprofile

# Configs
mkdir -p ~/.config
ln -sf ~/dot-files/.config/ghostty  ~/.config/ghostty
ln -sf ~/dot-files/.config/starship ~/.config/starship
ln -sf ~/dot-files/.config/tmux     ~/.config/tmux
ln -sf ~/dot-files/.config/nvim     ~/.config/nvim
```

Install tmux plugin manager (TPM):

```sh
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

Then open tmux and press `Ctrl-t I` to install tmux plugins.

Open Neovim — LazyVim will auto-install all plugins on first launch:

```sh
nvim
```

---

## Neovim

Based on [LazyVim](https://lazyvim.org) with customisations inspired by [craftzdog/dotfiles-public](https://github.com/craftzdog/dotfiles-public).

**Theme:** [solarized-osaka.nvim](https://github.com/craftzdog/solarized-osaka.nvim) (transparent)

**Key plugins:**
- `telescope.nvim` + file-browser — `;f` files, `;r` grep, `sf` file browser
- `copilot.lua` — `Ctrl-l` accept suggestion
- `noice.nvim` — command line UI
- `bufferline.nvim` — `Tab` / `Shift-Tab` cycle tabs
- `zen-mode.nvim` — `<leader>z`
- `lualine.nvim` — statusline
- LSP: TypeScript, CSS, TailwindCSS, Lua, HTML

**Custom keymaps:**
| Key | Action |
|-----|--------|
| `ss` / `sv` | Split horizontal / vertical |
| `sh/sj/sk/sl` | Move between panes |
| `te` | New tab |
| `sf` | File browser |
| `;f` | Find files |
| `;r` | Live grep |
| `<leader>z` | Zen mode |
| `<leader>i` | Toggle inlay hints |

---

## Tmux

Prefix: `Ctrl-t`

| Key | Action |
|-----|--------|
| `Ctrl-t r` | Reload config |
| `Ctrl-t o` | Open current dir in Finder |
| `Ctrl-Shift-←/→` | Swap windows |

---

## Starship

Uses the official [Tokyo Night preset](https://starship.rs/presets/tokyo-night.html) with username added to the first segment.

Segments: `░▒▓  username` → `directory` → `git branch/status` → `runtime versions` → `time`
