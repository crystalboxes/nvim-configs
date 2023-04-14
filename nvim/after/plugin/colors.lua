-- You can then use the 'min_dark' table to create a Neovim theme using a plugin like 'lualine'
-- or by manually applying the colors to the Neovim UI elements.
--
function ApplyColor(color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

vim.g.colorscheme_switcher_exclude = { 'default', 'industry', 'murphy', 'koehler', 'morning', 'rose-pine-main', 'torte',
    'zellner', 'shine',
    'rose-pine-moon',
    'ron', 'blue', 'darkblue', 'delek', 'desert', 'elflord', 'evening', 'lunaperche', 'peachpuff', 'pablo', 'quiet',
    'rose-pine-dawn' }
