vim.lsp.config("clangd", {
    cmd={"clangd", "--background-index", "--clang-tidy"},
    filestypes={"c", "cpp"},
    root_markers={"compile_commands.json", ".clangd", ".git"},

})

vim.lsp.enable("clangd")

vim.api.nvim_create_autocmd("LspAttach", {
    callback=function(ev)
     local client=vim.lsp.get_client_by_id(ev.data.client_id)
    if client and client:supports_method("textDocument/completion") then
        vim.lsp.completion.enable(true, client.id, ev.buf, {autotrigger=true})
end
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=ev.buf, desc="Ir a definicion"})
end,
})

vim.diagnostic.config({virtual_text=true})
vim.opt.completeopt={"menu", "menuone", "noselect", "popup"}


