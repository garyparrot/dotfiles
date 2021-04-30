# Defined in - @ line 1
function abook --wraps=ansible-playbook --description 'alias abook=ansible-playbook'
  ansible-playbook  $argv;
end
