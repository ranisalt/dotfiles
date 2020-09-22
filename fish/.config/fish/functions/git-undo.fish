# Defined in - @ line 1
function git-undo --wraps='git reset --soft HEAD^' --description 'alias git-undo=git reset --soft HEAD^'
  git reset --soft HEAD^ $argv;
end
