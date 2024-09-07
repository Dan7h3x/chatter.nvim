if vim.fn.has("nvim-0.8") ~= 1 then
  vim.api.nvim_err_writeln("Chatter needs at least nvim-0.8 and above.")
end

require("chatter").setup()
