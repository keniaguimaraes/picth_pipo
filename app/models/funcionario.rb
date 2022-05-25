class Funcionario < ApplicationRecord
    belongs_to:cliente
    has_many:funcionariobeneficio
    
    validates :cliente_id, presence: {message: 'Indique uma empresa'}
    validates :nome, length: {minimum: 2, message: 'Deve ter pelo menos 2 caracteres'}, allow_blank: true
    validates :cpf, presence: {message: 'Não pode ser deixado em branco'}
    validates :email, format:{with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}, allow_blank: true
    validate :cpf_valid?
    def cpf_valid?
        return if CPF.valid?(cpf)
        errors.add(:cpf)
    end
end
