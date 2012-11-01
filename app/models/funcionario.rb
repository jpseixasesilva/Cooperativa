class Funcionario < ActiveRecord::Base
  attr_accessible :atribuicao, :endereco, :nome, :salario, :telefone
end
