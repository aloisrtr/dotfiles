if status is-interactive
    # Commands to run in interactive sessions can go here
end

set PATH "$PATH:/home/aloisrtr/.cargo/bin:/home/aloisrtr/.config/emacs/bin:/home/aloisrtr/.cabal/bin:/home/aloisrtr/.ghcup/bin:/home/aloisrtr/.local/bin:/home/aloisrtr/.gem/ruby/3.0.0/bin/"

alias ll "exa -alh"
alias ls exa
alias tree "exa --tree"
alias hx helix
alias sudo doas

function fish_prompt
    printf '%s%s%s > ' (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

function fish_greeting
    pfetch
end

zoxide init fish | source

# opam configuration
source /home/aloisrtr/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
