" amarok.vim - amaroK integration for vim
" 
" This plugin let's you control amaroK (http://amarok.kde.org) from vim. It adds
" a menu to your gvim, and defines a new command called 'AmaroK', which let's
" you control amarok via Ex-commands. Since it uses the dcop-functionality of
" amaroK, you can type in any dcop command the dcop-player-interface of amarok
" supports. For a complete list type: dcop amarok player functions in a terminal
"
"
" If you don't like the menu, you can set the g:AmaroK_show_menu-variable to 0
" in your vimrc and the menu will not be displayed

if !exists('g:AmaroK_show_menu')
		let g:AmaroK_show_menu = 1
endif

function! CallAmaroK(cmd)
	call system("qdbus org.kde.amarok /Player ".a:cmd)
endfunction


command -nargs=1 AmaroK :call CallAmaroK('<args>')

if exists("g:AmaroK_show_menu")
	if g:AmaroK_show_menu==1
	9000amenu <silent> &AmaroK.Play<TAB>:AmaroK\ play           :AmaroK org.freedesktop.MediaPlayer.Play<CR>
	9000amenu <silent> &AmaroK.Pause<TAB>:AmaroK\ pause         :AmaroK org.freedesktop.MediaPlayer.Pause<CR>
	9000amenu <silent> &AmaroK.Stop<TAB>:AmaroK\ stop          :AmaroK org.freedesktop.MediaPlayer.Stop<CR>
	9000amenu <silent> &AmaroK.&Next<TAB>:AmaroK\ next          :AmaroK org.freedesktop.MediaPlayer.Next<CR>
	9000amenu <silent> &AmaroK.&Previous<TAB>:AmaroK\ prev      :AmaroK org.freedesktop.MediaPlayer.Prev<CR>
	9000amenu <silent> &AmaroK.&Current\ Song<TAB>:AmaroK\ Playing :AmaroK org.freedesktop.MediaPlayer.GetMetadata<CR>
        9000amenu <silent> &AmaroK.&Mute<TAB>:AmaroK\ mute :AmaroK org.freedesktop.MediaPlayer.Mute<CR>
        9000amenu <silent> &AmaroK.&Volume.0%  :AmaroK org.freedesktop.MediaPlayer.VolumeSet 0<CR>
	9000amenu <silent> &AmaroK.&Volume.25%   :AmaroK org.freedesktop.MediaPlayer.VolumeSet 25<CR>
	9000amenu <silent> &AmaroK.&Volume.50%   :AmaroK org.freedesktop.MediaPlayer.VolumeSet 50<CR>
	9000amenu <silent> &AmaroK.&Volume.75%   :AmaroK org.freedesktop.MediaPlayer.VolumeSet 75<CR>
	9000amenu <silent> &AmaroK.&Volume.100%   :AmaroK org.freedesktop.MediaPlayer.VolumeSet 100<CR>
	9000amenu <silent> &AmaroK.&Volume.Volume\ Up   :AmaroK org.freedesktop.MediaPlayer.VolumeUp 10<CR>
	9000amenu <silent> &AmaroK.&Volume.Volume\ Down   :AmaroK org.freedesktop.MediaPlayer.VolumeDown 10<CR>
	endif
endif


