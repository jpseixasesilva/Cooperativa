class CreateRegleites < ActiveRecord::Migration
  def change
    create_table :regleites do |t|
      t.references :presidente
      t.references :cooperado
      t.string :qtdleite
      t.string :semana

      t.timestamps
    end
    add_index :regleites, :presidente_id
    add_index :regleites, :cooperado_id
  end
end
