return {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    dependencies = { "echasnovski/mini.icons" },
    opts = {},
    init = function() 
        require("fzf-lua").setup()
    end,
    config = function()
        local fzf = require("fzf-lua")
        vim.keymap.set('n', '<leader>f', fzf.files, {desc = 'fzf find files'})
        --vim.keymap.set("n" "f", fzf.files(),{})
    end,
    
}

