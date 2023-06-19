-- lazy.nvim
return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      background_color = "#C0C0C0",
    })
  end
}
