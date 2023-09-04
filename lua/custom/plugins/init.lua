-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Esc to 'jk' for Visual and Isnert mode
vim.keymap.set("i", "jk", "<ESC>", { desc = "Esc while in Insert mode" })
vim.keymap.set("x", "jk", "<ESC>", { desc = "Esc while in Visual mode" })

-- Move selected line / block of text in visual mode
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", { desc = "Move selection up" })
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", { desc = "Move section ddown" })

-- move to the left or right buffer and close current buffer
vim.keymap.set('n', '<leader>bh', '<Cmd>BufferPrevious<CR>,', { desc = 'Go to previous buffer' })
vim.keymap.set('n', '<leader>bl', '<Cmd>BufferNext<CR>,', { desc = 'Go to next buffer' })
vim.keymap.set('n', '<leader>bc', '<Cmd>BufferClose<CR>,', { desc = 'Close buffer' })

vim.keymap.set('n', '<leader>bml', '<Cmd>BufferMoveNext<CR>,', { desc = 'Move buffer to the right' })
vim.keymap.set('n', '<leader>bmh', '<Cmd>BufferMovePrevious<CR>,', { desc = 'Move buffer to the left' })

vim.keymap.set('n', '<leader>b1', '<Cmd>BufferGoto 1<CR>', { desc = 'Go to buffer 1' })
vim.keymap.set('n', '<leader>b2', '<Cmd>BufferGoto 2<CR>', { desc = 'Go to buffer 2' })
vim.keymap.set('n', '<leader>b3', '<Cmd>BufferGoto 3<CR>', { desc = 'Go to buffer 3' })
vim.keymap.set('n', '<leader>b4', '<Cmd>BufferGoto 4<CR>', { desc = 'Go to buffer 4' })
vim.keymap.set('n', '<leader>b5', '<Cmd>BufferGoto 5<CR>', { desc = 'Go to buffer 5' })
vim.keymap.set('n', '<leader>b6', '<Cmd>BufferGoto 6<CR>', { desc = 'Go to buffer 6' })
vim.keymap.set('n', '<leader>b7', '<Cmd>BufferGoto 7<CR>', { desc = 'Go to buffer 7' })
vim.keymap.set('n', '<leader>b8', '<Cmd>BufferGoto 8<CR>', { desc = 'Go to buffer 8' })
vim.keymap.set('n', '<leader>b9', '<Cmd>BufferGoto 9<CR>', { desc = 'Go to buffer 9' })


--vim.keymap.set('n', '<leader>gf', '', { desc = 'Search [G]it [F]iles' })

-- create search for current word/selection
vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "[S]earch & [R]eplace selection" })

-- run prettier on current file
vim.keymap.set("n", "<Leader>pp", ":lua vim.lsp.buf.format()<CR>")

-- next with 'n' and prev with 'N' on regex searches
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Trouble
vim.keymap.set("n", "<leader>tt", function() require("trouble").open() end)
vim.keymap.set("n", "<leader>tw", function() require("trouble").open("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>td", function() require("trouble").open("document_diagnostics") end)
vim.keymap.set("n", "<leader>tq", function() require("trouble").open("quickfix") end)
vim.keymap.set("n", "<leader>tl", function() require("trouble").open("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").open("lsp_references") end)

-- keep cursor in the middle while moving up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- setup Harppon keymaps
vim.keymap.set("n", "<leader>ha", function() require("harpoon.mark").add_file() end)
vim.keymap.set("n", "<leader>hr", function() require("harpoon.mark").rm_file() end)

vim.keymap.set("n", "<leader>hm", function() require("harpoon.ui").toggle_quick_menu() end)

vim.keymap.set("n", "<leader>hh", function() require("harpoon.ui").nav_next() end)
vim.keymap.set("n", "<leader>hl", function() require("harpoon.ui").nev_prev() end)

vim.keymap.set("n", "<leader>h1", function() require("harpoon.ui").nav_file(1) end)
vim.keymap.set("n", "<leader>h2", function() require("harpoon.ui").nav_file(2) end)
vim.keymap.set("n", "<leader>h3", function() require("harpoon.ui").nav_file(3) end)
vim.keymap.set("n", "<leader>h4", function() require("harpoon.ui").nav_file(4) end)
vim.keymap.set("n", "<leader>h5", function() require("harpoon.ui").nav_file(5) end)
vim.keymap.set("n", "<leader>h5", function() require("harpoon.ui").nav_file(6) end)

--[[ Git Fugitive Telescope bindings ]]
vim.keymap.set('n', "<leader>gb", "<Cmd>Telescope git_banches<CR>")
vim.keymap.set('n', "<leader>gs", "<Cmd>Telescope git_status<CR>")
vim.keymap.set('n', "<leader>gd", "<Cmd>Telescope git_bcommits<CR>")
vim.keymap.set('n', "<leader>gc", "<Cmd>Telescope git_commits<CR>")
vim.keymap.set('n', "<leader>gf", "<Cmd>Telescope git_files<CR>")
vim.keymap.set('n', "<leader>gt", "<Cmd>Telescope git_stash<CR>")

--[[ Lazygit keymaps ]]
vim.keymap.set('n', '<leader>gl', '<Cmd>LazyGit<CR>')

--[[ Git DiffView keymaps]]
vim.keymap.set('n', '<leader>gv', '<Cmd>DiffviewOpen<CR>')

return {

}
