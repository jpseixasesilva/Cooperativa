class Regleite < ActiveRecord::Base
  belongs_to :presidente
  belongs_to :cooperado
  attr_accessible :presidente_id, :cooperado_id, :qtdleite, :semana
end
