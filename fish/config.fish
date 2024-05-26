set -g fish_greeting
export "MICRO_TRUECOLOR=1"

if status is-interactive
    starship init fish | source
    atuin init fish | source
end

# List Directory
alias ls="lsd"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"

# Aliases for software managment
# pacman
alias update="sudo pacman -Syyu"

#fastfetch --short
alias ff="fastfetch"

# This will generate a list of explicitly installed packages
alias list="sudo pacman -Qqe"
alias total="sudo pacman -Qqe | wc -l"

# list of AUR packages
alias listaur="sudo pacman -Qqem"

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'

# Fish greetings when the terminal is shown up in interactive mode
function fish_greeting
    if test (random 1 10) = 1
        fish_logo f00 '' ff0
    else
        if test (random 1 10) -gt 5
            pokemon-colorscripts -r
        else
            colorscript random
        end
    end
end



fish_add_path /home/prasant/.spicetify
