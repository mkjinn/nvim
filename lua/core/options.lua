-----------------------------------------------------------
-- General Neovim settings and configuration
-----------------------------------------------------------

-- Default options are not included
-- See: https://neovim.io/doc/user/vim_diff.html
-- [2] Defaults - *nvim-defaults*

local g = vim.g       -- Global variables
local opt = vim.opt   -- Set options (global/buffer/windows-scoped)

-----------------------------------------------------------
-- General
-----------------------------------------------------------
opt.mouse = 'a'                       -- Enable mouse support
opt.clipboard = 'unnamedplus'         -- Copy/paste to system clipboard
opt.swapfile = true                  -- Don't use swapfile
opt.completeopt = 'menuone,noinsert,noselect'  -- Autocomplete options
-- opt.spelllang = { "en_us", "ru" } -- Словари рус eng
-- opt.spell = true

-- redundancy
-- opt.undofile = true --  keep undo history between sessions
-- opt.undodir = "~/.vim/undo/" -- keep undo files out of file dir
-- opt.directory = "~/.vim/swp/" -- keep unsaved changes away from file dir
-- opt.backupdir = "~/.vim/backup/" -- backups also should not go to git


-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true           -- Show line number
opt.showmatch = true        -- Highlight matching parenthesis
opt.foldmethod = 'marker'   -- Enable folding (default 'foldmarker')
-- opt.colorcolumn = '100'      -- Line lenght marker at 80 columns
opt.splitright = true       -- Vertical split to the right
opt.splitbelow = true       -- Horizontal split to the bottom
opt.ignorecase = true       -- Ignore case letters when search
opt.smartcase = true        -- Ignore lowercase for the whole pattern
opt.linebreak = true        -- Wrap on word boundary
opt.numberwidth = 1
-- opt.termguicolors = false    -- Enable 24-bit RGB colors
-- opt.laststatus=3            -- Set global statusline

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true        -- Use spaces instead of tabs
opt.shiftwidth = 4          -- Shift 4 spaces when tab
opt.tabstop = 4             -- 1 tab == 4 spaces
opt.smartindent = true      -- Autoindent new lines
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position
opt.autoindent = true -- copy indent from current line when starting new one


vim.cmd("set formatoptions-=cro") -- do not insert comments on new lines

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true           -- Enable background buffers
opt.history = 100           -- Remember N lines in history
opt.lazyredraw = true       -- Faster scrolling
opt.synmaxcol = 240         -- Max column for syntax highlight
opt.updatetime = 100        -- ms to wait for trigger an event

-----------------------------------------------------------
-- Startup
-----------------------------------------------------------
-- Disable nvim intro
-- opt.shortmess:append "sI"
--
-- -- -- Disable builtin plugins
-- local disabled_built_ins = {
--    "2html_plugin",
--    "getscript",
--    "getscriptPlugin",
--    "gzip",
--    "logipat",
--    "netrw",
--    "netrwPlugin",
--    "netrwSettings",
--    "netrwFileHandlers",
--    "matchit",
--    "tar",
--    "tarPlugin",
--    "rrhelper",
--    "spellfile_plugin",
--    "vimball",
--    "vimballPlugin",
--    "zip",
--    "zipPlugin",
--    "tutor",
--    "rplugin",
--    "synmenu",
--    "optwin",
--    "compiler",
--    "bugreport",
--    "ftplugin",
-- }
-- 
-- for _, plugin in pairs(disabled_built_ins) do
--    g["loaded_" .. plugin] = 1
-- end
