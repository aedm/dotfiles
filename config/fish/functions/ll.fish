function ll --wraps=ls --wraps='exa -alF --group-directories-first --git' --description 'alias ll exa -alF --group-directories-first --git'
  exa -alF --group-directories-first --git $argv
        
end
