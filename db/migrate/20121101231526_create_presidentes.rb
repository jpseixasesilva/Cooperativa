class CreatePresidentes < ActiveRecord::Migration
  def change
    create_table :presidentes do |t|
      t.string :nome
      t.string :telefone
      t.string :endereco
      t.string :data

      t.timestamps
    end
  end
end
