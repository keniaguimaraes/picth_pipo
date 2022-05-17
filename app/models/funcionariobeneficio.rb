class Funcionariobeneficio < ApplicationRecord
    belongs_to:beneficio
    belongs_to:funcionario

    validates :beneficio_id, presence: {message: 'Informe um Plano!'}
    validates :altura, presence: {message: 'Informar Altura'},numericality:{greater_than:0},  if: :campos2   #{message: 'Informar Altura'}
    validates :peso, presence: {message:   'Informar Peso'}, numericality:{greater_than: 0} ,if: :campos2# {message:   'Informar Peso'}
    validates :horas_meditadas, presence: {message: 'Informar Horas Meditadas'}, if: :campos #{message: 'Informar Horas Meditadas'}
      
    def campos
        beneficio_id == 4 
    end

    def campos2
        beneficio_id == 3 
    end
  
end
