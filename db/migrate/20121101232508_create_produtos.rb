class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :tipo
      t.string :validade
      t.string :lote
      t.string :preco

      t.timestamps
    end
  end
end
