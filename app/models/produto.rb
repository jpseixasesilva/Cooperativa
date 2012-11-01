class Produto < ActiveRecord::Base
  attr_accessible :lote, :nome, :preco, :tipo, :validade
end
