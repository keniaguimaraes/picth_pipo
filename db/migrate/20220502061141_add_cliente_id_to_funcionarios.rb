class AddClienteIdToFuncionarios < ActiveRecord::Migration[7.0]
  def change
    add_column :funcionarios, :cliente_id, :integer
  end
end
