if status is-interactive
    # Commands to run in interactive sessions can go here
end

# custom functions
function update-everything;
  paru
  cargo install-update -a
  flatpak update
  rustup update
  nix-env --upgrade -v
end

# add to path
fish_add_path ~/.local/share/gem/ruby/3.0.0/bin

# disable welcome message
set -g fish_greeting

alias cat=bat
alias ls=eza

starship init fish | source
rtx activate fish | source

fortune | pokemonsay
blahaj -f -r

