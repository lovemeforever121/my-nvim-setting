--[[ require("sg").setup({

  enable_cody = true,
  accept_tos = true,

  autostart = true,

  on_attach = function(_, bufnr)
    -- keybindings
  end
})
 ]]

 require("sg.lsp").setup()
