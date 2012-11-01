class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :telefone
      t.string :endereco
      t.string :atribuicao
      t.string :salario

      t.timestamps
    end
  end
end
