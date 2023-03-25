-- You can then use the 'min_dark' table to create a Neovim theme using a plugin like 'lualine'
-- or by manually applying the colors to the Neovim UI elements.
--
function ApplyColor(color)
    -- print("Hello world!")
    -- color = color or "rose-pine"
    -- vim.cmd.colorscheme(min_dark.colors)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

