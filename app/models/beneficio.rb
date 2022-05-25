class Beneficio < ApplicationRecord
    has_many:funcionariobeneficio
    has_many:clientebeneficio
end
