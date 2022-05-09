class Funcionariobeneficio < ApplicationRecord
    belongs_to:beneficio
    belongs_to:funcionario
end
