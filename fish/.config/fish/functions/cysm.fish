# Defined in /tmp/fish.kQn5IH/cysm.fish @ line 1
function cysm
  curl -sd port="$argv[1]" https://canyouseeme.org | grep -o 'Success\|Error'
end
