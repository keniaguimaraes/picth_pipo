class CreateFuncionariobeneficios < ActiveRecord::Migration[7.0]
  def change
    create_table :funcionariobeneficios do |t|
      t.integer :funcionario_id
      t.integer :beneficio_id
      t.float :peso
      t.float :altura
      t.datetime :horas_meditadas

      t.timestamps
    end
  end
end
