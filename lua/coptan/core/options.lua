local opt = vim.opt -- for conciseness

-- line numbers
opt.number = true
opt.relativenumber = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = false

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'
opt.colorcolumn = '80'

-- buffer slpitting
opt.splitbelow = true
opt.splitright = true

-- enable mouse interaction
opt.mouse = 'a'

-- dealing with swaps
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
