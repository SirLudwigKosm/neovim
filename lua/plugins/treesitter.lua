return
{
{
    "nvim-treesitter/nvim-treesitter",
    branch="main",
    lazy=false,
    build=":TSUpdate",

    config=function()
        require("nvim-treesitter").install({"c", "cpp", "lua", "bash"})

        vim.api.nvim_create_autocmd("FileType", {
            pattern={"c", "cpp", "lua", "sh"},
            callback=function()
             vim.treesitter.start()
            end,
        })
    end,
    }
}
