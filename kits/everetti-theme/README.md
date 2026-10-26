# everetti-theme

The Everetti colour theme as plain files. The kit installs nothing and runs
nothing: it puts generated theme files under `/usr/share/everetti/` and leaves
it to each tool's kit to link the file it needs.


## Contents

| Path in the image | For | Used by |
|---|---|---|
| `/usr/share/everetti/neovim/everetti.lua` | Neovim colorscheme | `nvim` links it to `~/.config/nvim/colors/` |
| `/usr/share/everetti/opencode/everetti.json` | OpenCode TUI theme | `opencode` links it to `~/.config/opencode/themes/` |
| `/usr/share/everetti/palette.toml` | The source palette | reference only |
| `/usr/share/everetti/SOURCE` | Upstream repository and commit the files were copied from | reference only |

The image is `FROM scratch`: it holds nothing but the files, and the kit has no
capabilities.


## Composition

- `provides: everetti-theme@<version>`. A kit that wants the theme lists
  `integrates: ["everetti-theme"]`, which orders this kit before it and fails
  the composition if a present provider is too old. It is not `requires`, so a
  composition without the theme still resolves; the link then dangles.
- Link from `lifecycle@1` `install` with `ln -sf`, as `nvim` and `opencode` do.
  Do not copy: the file stays owned by this kit.
- A project lists the kit next to `nvim` and `opencode`, or lists the forge set (`hattori-forge-opencode`).


## Without the theme in the composition

`integrates` is soft: a composition that omits this kit still resolves, but the
consumers do not all cope with that.

- `nvim` links `colors/everetti.lua` and `ui.lua` sets `colorscheme = "everetti"`
  unconditionally. Without the kit the link dangles and Neovim has no such
  colorscheme.
- `opencode` links the OpenCode theme only when the file is
  there, but `cli.json` selects it by name either way.

Options, from the least to the most invasive:

1. Keep it as is and treat the kit as part of every composition (what
   a project of Hattori's does). Document it; nothing else changes.
2. Guard the consumers: in `install`, `[ -e /usr/share/everetti/<tool>/<file> ] && ln -sf ...`;
   in `ui.lua`, fall back to a stock colorscheme when `colors/everetti.lua` is
   absent; in `cli.json`, drop the theme name when the file is absent.
3. Change `integrates` to `requires` in `nvim` and `opencode`, so a composition
   without the theme fails to resolve instead of degrading. This makes the
   theme mandatory for anyone who uses either kit.


## Updating

The files are generated outputs copied from
<https://gitlab.com/turdidae/pilareski/everetti> (`make generate` there). The
kit is MIT-licensed (see `LICENSE`).

Change `palette.toml` or a template at the source, run `make generate`, copy the
files this kit ships and put the new commit hash in `files/SOURCE` (second
line). Then update the `everetti-theme` entry in each
project's `sbxenv.yaml` once the release is published.

Only the tools listed above are copied. The generator also emits bat, Ghostty
and Zellij themes; no kit in this repository uses them, so they are not part of
this kit.


## Adding a tool

1. Copy the generated file to `files/<tool>/`.
2. Have the tool's kit link it from `/usr/share/everetti/<tool>/`.
3. Add the tool to the table above.
