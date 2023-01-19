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
      \ 'python': v:true,
      \ 'go': v:true,
      \ 'rust': v:true,
      \ }

imap <silent><script><expr> <C-L> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true
