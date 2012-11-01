class CreateRegtransportes < ActiveRecord::Migration
  def change
    create_table :regtransportes do |t|
      t.references :presidente
      t.references :funcionario
      t.references :transporte
      t.references :produto

      t.timestamps
    end
    add_index :regtransportes, :presidente_id
    add_index :regtransportes, :funcionario_id
    add_index :regtransportes, :transporte_id
    add_index :regtransportes, :produto_id
  end
end
