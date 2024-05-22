set -U fish_user_paths /usr/local/sbin /usr/local/bin /usr/bin /bin /home/shrey/bin /home/shrey/.cargo/bin

set -gx FZF_DEFAULT_COMMAND  'rg --files --no-ignore-vcs --hidden'

abbr -a e 'nvim'
abbr -a g 'git'
abbr -a gs 'git status'
abbr -a m 'make'
abbr -a c 'cargo'

if command -v exa > /dev/null
	abbr -a l 'exa'
	abbr -a ls 'exa'
	abbr -a ll 'exa -l'
	abbr -a lll 'exa -la'
else
	abbr -a l 'ls'
	abbr -a ll 'ls -l'
	abbr -a lll 'ls -la'
end

abbr -a python 'python3'
abbr -a pip 'pip3'

set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate ''
set __fish_git_prompt_showupstream 'none'
set -g fish_prompt_pwd_dir_length 3

# colored man output
# from http://linuxtidbits.wordpress.com/2009/03/23/less-colors-for-man-pages/
setenv LESS_TERMCAP_mb \e'[01;31m'       # begin blinking
setenv LESS_TERMCAP_md \e'[01;38;5;74m'  # begin bold
setenv LESS_TERMCAP_me \e'[0m'           # end mode
setenv LESS_TERMCAP_se \e'[0m'           # end standout-mode
setenv LESS_TERMCAP_so \e'[38;5;246m'    # begin standout-mode - info box
setenv LESS_TERMCAP_ue \e'[0m'           # end underline
setenv LESS_TERMCAP_us \e'[04;38;5;146m' # begin underline



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/shrey/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

if test -f ~/.config/fish/local_config.fish
    source ~/.config/fish/local_config.fish
end

