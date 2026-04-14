require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>cf", function()
  require("conform").format()
end, { desc = "Format current buffer" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<F5>", function()
  require("dap").continue()
end)
map("n", "<F10>", function()
  require("dap").step_over()
end)
map("n", "<F11>", function()
  require("dap").step_into()
end)
map("n", "<F12>", function()
  require("dap").step_out()
end)
map("n", "<leader>b", function()
  require("dap").toggle_breakpoint()
end)

-- -- Normal mode
-- map("n", "<C-Up>", ":m .-2<CR>==", { desc = "Move line up" })
-- map("n", "<C-Down>", ":m .+1<CR>==", { desc = "Move line down" })
--
-- Insert mode
-- map("i", "<C-Up>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up" })
-- map("i", "<C-Down>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down" })

-- Visual mode (for selected blocks)
-- map("v", "<C-Up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
-- map("v", "<C-Down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
