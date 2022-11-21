let g:context#commentstring#table = g:context#commentstring#table

let g:context#commentstring#table['javascriptreact'] = {
      \ 'jsxRegion' : '{/*%s*/}',
      \}

let g:context#commentstring#table['typescriptreact'] = {
			\ 'tsComment' : '// %s',
			\ 'tsImport' : '// %s',
			\ 'tsxStatment' : '// %s',
			\ 'tsxRegion' : '{/*%s*/}',
\}
autocmd FileType prisma setlocal commentstring=//\ %s
