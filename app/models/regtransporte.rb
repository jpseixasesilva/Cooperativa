class Regtransporte < ActiveRecord::Base
  belongs_to :presidente
  belongs_to :funcionario
  belongs_to :transporte
  belongs_to :produto
  attr_accessible :presidente_id, :funcionario_id, :transporte_id, :produto_id
end
