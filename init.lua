--NUmeros en linea
vim.opt.number=true
vim.opt.relativenumber=false

--incidentacion y tabulas 
vim.opt.expandtab=true
vim.opt.shiftwidth=4
vim.opt.tabstop=4

--mouse
vim.opt.mouse='a'

--resaltar linea 
vim.opt.cursorline=true

--portapapeles del sistema
vim.opt.clipboard='unnamedplus'

--Prueba de mostrar el mensaje 
--% la ruta del archivo, %:p ruta completa %:t solo el nombre del archivo y %:r solo el nombre del archivo pero sin extension

vim.keymap.set("n", "<leader>h", function()
  	      print(vim.fn.expand("%:p"))
          end, 
{
	desc = "Saludo de prueba" 
})  

--variables globales que defino yo    
vim.g.mapleader=" "

    vim.keymap.set("n", "<leader>w", "<cmd>write<cr>", 
        {
	    desc="Guardar"
        })
    vim.keymap.set("n", "<leader>q", "<cmd>quit<cr>", 
        {
	    desc="salir"
        })
    vim.keymap.set("i", "jk", "<esc>", 
        {
	    desc="Salir del modo Insert"
        })

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.vim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system (
        {   
         "git", "clone", "--filter=blob:none", "--branch=stable",
    "https://github.com/folke/lazy.nvim.git", lazypath,
        })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")




