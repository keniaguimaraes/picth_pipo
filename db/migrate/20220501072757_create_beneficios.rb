class CreateBeneficios < ActiveRecord::Migration[7.0]
  def change
    create_table :beneficios do |t|
      t.string :nome

      t.timestamps
    end
  end
end
