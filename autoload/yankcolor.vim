function! yankcolor#yank_rtf ()
  let langdict = {
        \ 'javascript.jsx': 'js'
        \ }

  let lang = get(langdict, &filetype, &filetype)

  execute '%!highlight --out-format rtf --syntax ' lang ' --style denim  --font-size 28 --font "Inconsolata for Powerline"'

  normal ggVG"+y
  normal u
endfunction
