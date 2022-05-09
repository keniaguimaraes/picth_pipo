class Funcionario < ApplicationRecord
    belongs_to:cliente
    has_many:funcionariobeneficio
    
    validates :cliente_id, presence: true
    validates :nome, presence: true
    validates :cpf, presence: true, length: { minimum: 11 }
    validates :endereco, presence: true
    validates :data_admissao, presence: true
    validates :email, presence: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create}, uniqueness: {case_sensitive: false}
end
