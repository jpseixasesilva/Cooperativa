class CreateCooperados < ActiveRecord::Migration
  def change
    create_table :cooperados do |t|
      t.string :nome
      t.string :telefone
      t.string :endereco
      t.string :data

      t.timestamps
    end
  end
end
