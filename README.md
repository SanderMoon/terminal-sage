# Terminal Sage

A calm, nature-inspired dark color scheme for your terminal environment. Consistent colors across Neovim, WezTerm, and tmux.

## Palette

| Role | Color | Hex |
|------|-------|-----|
| Background | ![#161916](https://placehold.co/16x16/161916/161916) | `#161916` |
| Foreground | ![#E4E4DC](https://placehold.co/16x16/E4E4DC/E4E4DC) | `#E4E4DC` |
| Green | ![#7DB880](https://placehold.co/16x16/7DB880/7DB880) | `#7DB880` |
| Red | ![#C45B5B](https://placehold.co/16x16/C45B5B/C45B5B) | `#C45B5B` |
| Yellow | ![#C9B458](https://placehold.co/16x16/C9B458/C9B458) | `#C9B458` |
| Blue | ![#6A9FCF](https://placehold.co/16x16/6A9FCF/6A9FCF) | `#6A9FCF` |
| Purple | ![#A87FBF](https://placehold.co/16x16/A87FBF/A87FBF) | `#A87FBF` |
| Cyan | ![#6EB5A0](https://placehold.co/16x16/6EB5A0/6EB5A0) | `#6EB5A0` |

## Install

### Neovim

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "SanderMoon/terminal-sage",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("terminal-sage")
  end,
}
```

Supports Treesitter, LSP semantic tokens, and plugins: Neo-tree, Telescope, Snacks, nvim-cmp, Which-key, Noice, Lazy.nvim, render-markdown, flash.nvim, trouble.nvim, gitsigns, and more.

### WezTerm

With the [WezTerm plugin system](https://wezfurlong.org/wezterm/config/plugins.html):

```lua
local wezterm = require("wezterm")
local config = wezterm.config_builder()

local terminal_sage = wezterm.plugin.require("https://github.com/SanderMoon/terminal-sage")
terminal_sage.apply_to_config(config)

return config
```

### tmux

Source the theme in your `.tmux.conf`:

```tmux
source-file /path/to/terminal-sage/tmux/terminal-sage.tmux.conf
```

Or if you clone to `~/.tmux/themes`:

```sh
git clone https://github.com/SanderMoon/terminal-sage ~/.tmux/themes/terminal-sage
```

```tmux
source-file ~/.tmux/themes/terminal-sage/tmux/terminal-sage.tmux.conf
```

## License

MIT
