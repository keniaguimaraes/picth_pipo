class CreateClientebeneficios < ActiveRecord::Migration[7.0]
  def change
    create_table :clientebeneficios do |t|
      t.integer :cliente_id
      t.integer :beneficio_id
      t.timestamps
    end
  end
end
