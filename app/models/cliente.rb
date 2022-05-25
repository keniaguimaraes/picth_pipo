class Cliente < ApplicationRecord
    has_many:funcionario
    has_many:clientebeneficio
  
end
