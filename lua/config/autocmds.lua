vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  callback = function()
    local term_title = vim.b.term_title
    if term_title and term_title:match "lazygit" then
      -- Create lazygit specific mappings
      vim.keymap.set("t", "q", "<cmd>close<cr>", { buffer = true })
    end
  end,
})
