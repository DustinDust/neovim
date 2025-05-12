# My minimalistic neovim configuration
Inspired by Mr.ThePrimeagen (if u haven't followed him yet, check him out!)


## Prerequisite
0. Neovim version 0.11+ (since mason-lspconfig is updated to the newest)
1. [Ripgrep](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation)
2. [Lazygit](https://github.com/jesseduffield/lazygit?tab=readme-ov-file#installation) (Optional)
3. A c/c++ compiler (to compile [tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#requirements) parsers)


## Key binds
### LSP key binds
|key|action|mode|
|--|--|--|
|\<leader>ls|Workspace <b>s</b>ymbol|Normal|
|\<leader>la|Code <b>a</b>ction|Normal|
|\<leader>lR|<b>R</b>eferences|Normal|
|\<leader>lr|<b>R</b>ename symbol|Normal|
|\<leader>lh|Signature <b>h</b>elp|Normal|
|Ctrl+h|Signature <b>h</b>elp|Insert|
|\<leader>ld|Open <b>d</b>iagnostic|Normal|
|[d|Next diagnostic|Normal|
|]d|Previous diagnostic|Normal|
|\<leader>lf|<b>F</b>ormat code|Normal, Visual|
|\<leader>u|<b>u</b>ndotree buffer|normal|

### Project navigation key binds
| key | action | mode |
|--|--|--|
|\<leader>pf|Find **p**roject **f**iles|Normal|
|Ctrl+p|Find git files|Normal
|\<leader>pws|**S**earch the **p**roject for the current `word`|Normal|
|\<leader>pWs|**S**earch the **p**roject for the current `WORD`|Normal|
|\<leader>ps|**S**earch the **p**roject for the user input string|Normal|
|\<leader>vh|**V**iew **h**elp pages for Neovim & plugins |Normal|
|\<leader>ha|**A**dd current buffer to **h**arpoon|Normal|
| \<leader>sp|**S**earch **project** (advanced search) |Normal|
|\<leader>1|Move to marked buffer 1|Normal|
|\<leader>2|Move to marked buffer 2|Normal|
|\<leader>3|Move to marked buffer 3|Normal|
|\<leader>4|Move to marked buffer 4|Normal|
|\<leader>h1|Replace marked buffer 1 with current buffer|Normal|
|\<leader>h2|Replace marked buffer 2 with current buffer|Normal|
|\<leader>h3|Replace marked buffer 3 with current buffer|Normal|
|\<leader>h4|Replace marked buffer 4 with current buffer|Normal|
|Ctrl+e|Show marked buffers|Normal|
|\<leader>e|show file **e**xplorer buffer|Normal|

### Git
You can use `:Git` from [fugitive.vim](https://github.com/tpope/vim-fugitive) as well. Currently there're no key bind for fugitive.

| key | action | mode |
|--|--|--|
|\<leader>gl|Show **l**azy git UI (disabled by default)|Normal|
|\<leader>gs|**S**tage hunk|Normal, Visual|
|\<leader>gr|**R**eset hunk|Normal, Visual|
|\<leader>gu|**U**ndo stage hunk|Normal|
|\<leader>gS|**S**tage buffer|Normal|
|\<leader>gR|**R**eset buffer|Normal|
|\<leader>gp|**p**review hunk change|Normal|
|\<leader>gb|Show **b**lame for current line (more verbose)|Normal|
|\<leader>gB|Toggle show **b**lame current line|Normal|
|\<leader>gd|Show **d**iff|Normal|
|\<leader>gD|Show **d**iff against latest commit (same as above)|Normal|
|\<leader>gx|Toggle deleted|Normal|
|\<leader>gh|Select **h**unk under current cursor|Visual, Visual Line|
|\<leader>ga|**A**ttach Gitsign plugin (in case other key binds don't work)|Normal|
|]c|Jump to next hunk|Normal|
|[c|Jump to next hunk|Normal|

