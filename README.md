# vimux-elixir

Run elixir tests in vim.

![vimux-elixir](http://g.recordit.co/vN3WbmrCkL.gif)

## Dependencies

* [vimux](https://github.com/benmills/vimux)

## Installation

If you use Vundle add this line to your `.vimrc` file:

    Plugin 'pilu/vimux-elixir'

    # with an older vundle version you would need to use Bundle
    # Bundle 'pilu/vimux-elixir'

## Commands

Running all tests:

    :ElixirTestAll

Running tests for current file:

    :ElixirTestFile

Running test for current line:

    :ElixirTestFocused


## Mapping

Put the following configuration in you `~/.vim/ftplugin/elixir.vim` file:

```viml
map <Leader>ra :wa<CR> :ElixirTestAll<CR>
map <Leader>rf :wa<CR> :ElixirTestFile<CR>
map <Leader>rt :wa<CR> :ElixirTestFocused<CR>
```
