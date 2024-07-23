let g:copilot_filetypes = {
      \ '*': v:false,
      \ 'lua': v:true,
      \ 'typescript': v:true,
      \ 'typescriptreact': v:true,
      \ 'tsx': v:true,
      \ 'javascript': v:true,
      \ 'javascriptreact': v:true,
      \ 'jsx': v:true,
      \ 'ruby': v:true,
      \ 'eruby': v:true,
      \ 'python': v:true,
      \ 'go': v:true,
      \ 'rust': v:true,
      \ 'elixir': v:true,
      \ 'tex': v:true,
      \ 'bib': v:true,
      \ }

let g:copilot_workspace_folders =
      \ ["~/Code/rxv-api-ruby", "~/Code/rxv-frontend"]

imap <silent><script><expr> <C-L> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true
