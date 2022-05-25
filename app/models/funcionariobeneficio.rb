
class Funcionariobeneficio < ApplicationRecord
    include ActiveModel::Validations
    validates_with FuncionarioValidator

    belongs_to:beneficio
    belongs_to:funcionario

    validates :beneficio_id, presence: {message: 'Informe um Benefício'}
    validates :altura,numericality:{greater_than:0,message: 'Informar Altura'},  if: :campos2   
    validates :peso, numericality:{greater_than: 0,message:   'Informar Peso'} ,if: :campos2
    validates :horas_meditadas, presence: {message: 'Informar Horas Meditadas'}, if: :campos 
      
    def campos
        beneficio_id == 4 
    end

    def campos2
        beneficio_id == 3 
    end
end
