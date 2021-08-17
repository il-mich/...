" Environment thingies
"let g:arduino_dir = '/usr/share/local/arduino'
"let g:arduino_home_dir = '$HOME/.arduino15'

" Status line function
function! ArduinoStatus()
	return '%f [' . g:arduino_board . ']'
endfunction

" Add to Airline
autocmd BufNewFile,BufRead *.ino let g:airline_section_x='%{ArduinoStatus()}'

" Keyboard shortcut
nnoremap <buffer> <leader>au :ArduinoUpload<CR>

