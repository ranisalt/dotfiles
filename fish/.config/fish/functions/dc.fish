# Defined in - @ line 1
function dc --wraps=docker-compose --description 'alias dc=docker-compose'
  docker-compose  $argv;
end
