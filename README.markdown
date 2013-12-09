### Description

SimpleSmoothScroll is a simple Vim global plugin for giving a smoothed effect
to <kbd>Ctrl</kbd>-<kbd>D</kbd> and <kbd>Ctrl</kbd>-<kbd>U</kbd>.

### Rationale

I originally created this script for myself when I was looking through large
code files in a legacy code base and I was having trouble keeping track of
where I was in all the spaghetti. The smooth scroll action gave me a better
sense of my own navigation.

I originally published this code [on StackOverflow](http://stackoverflow.com/a/12201974/834176).
The current version has been fixed up some in an attempt to be a little more
readable and conform to the guidelines put forth in `:help write-script`.

I've also used this as a chance to begin learning to use Github. At the time I
wrote this, I did not realize that there were [many existing smooth scroll
plugins](http://www.vim.org/scripts/script_search_results.php?keywords=smooth+scroll&script_type=&order_by=rating&direction=descending&search=search).
To be honest, I haven't looked into any of them. They might be better than
this.

### Features

+ Scroll on the basis of the Vim `scroll` option.
+ If you set the mouse option for some modes, you can scroll with the mouse
  wheel in those modes.
+ Manually customizable scrolling speed (adjust the `sleep` command's time
  argument; I use ten milliseconds). *Note*: just like slowing down the frame
  rate on a video, if you slow down the smooth scroll too much it will be jerky
  scroll.
+ Works in normal or insert mode (i.e. leaves you in insert mode if you were
  already in insert mode)
+ Simple and lightweight

### Warning

I've found that you shouldn't push <kbd>Ctrl</kbd>-<kbd>D</kbd> or
<kbd>Ctrl</kbd>-<kbd>U</kbd> until the previous scroll has finished, or the
behavior is somewhat unpredictable. I have mostly experienced this problem when
dealing with very large files over a painfully slow network connection.

### Installation

I recommend installing [pathogen.vim](https://github.com/tpope/vim-pathogen),
and then executing:

    cd ~/.vim/bundle
    git clone https://github.com/Kazark/vim-SimpleSmoothScroll.git

or the equivalent. Alternatively, you can copy `plugin/SimpleSmoothScroll.vim`
to `~/.vim/plugin`. (Note: you may have to use `~\vimfiles` instead of
`~/.vim` if you are on Windows...)
