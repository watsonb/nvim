return {
  'xiyaowong/transparent.nvim',
  config = function()
    require('transparent').setup({
      extra_groups = {
        "Normal",
        "NormalFloat",
        "NvimTreeNormal",
      }
    })
  end
}
