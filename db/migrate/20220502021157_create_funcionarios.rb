class CreateFuncionarios < ActiveRecord::Migration[7.0]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :cpf
      t.string :endereco
      t.date :data_admissao
      t.string :email

      t.timestamps
    end
  end
end
