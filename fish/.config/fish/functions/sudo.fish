function sudo --wraps='pkexec --keep-cwd' --wraps=doas --description 'alias sudo=doas'
    doas $argv
end
