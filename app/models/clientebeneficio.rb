class Clientebeneficio < ApplicationRecord
    belongs_to:beneficio
    belongs_to:cliente
end
