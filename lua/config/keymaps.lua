local map = vim.keymap.set

map("n", "<Esc>", "<cmd>nohlsearch<CR>")

map("n", "<leader>w", "<cmd>write<CR>", { desc = "Save file" })
map("n", "<leader>q", "<cmd>quit<CR>", { desc = "Quit window" })
map("n", "<leader>Q", "<cmd>qa!<CR>", { desc = "Quit all" })

map("n", "<leader>e", "<cmd>Neotree toggle buffers right<CR>", { desc = "Toggle open files sidebar" })
map("n", "<leader>E", "<cmd>Neotree toggle filesystem left reveal_force_cwd<CR>", { desc = "Toggle full file explorer" })
map("n", "<leader>o", "<cmd>Oil<CR>", { desc = "Open Oil file manager" })
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help tags" })

map("n", "<leader>h", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
map("n", "<leader>l", "<cmd>bnext<CR>", { desc = "Next buffer" })
map("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Delete buffer" })

map("n", "<leader>sv", "<cmd>vsplit<CR>", { desc = "Vertical split" })
map("n", "<leader>sh", "<cmd>split<CR>", { desc = "Horizontal split" })

map("n", "<C-h>", "<C-w><C-h>", { desc = "Move left" })
map("n", "<C-l>", "<C-w><C-l>", { desc = "Move right" })
map("n", "<C-j>", "<C-w><C-j>", { desc = "Move down" })
map("n", "<C-k>", "<C-w><C-k>", { desc = "Move up" })
