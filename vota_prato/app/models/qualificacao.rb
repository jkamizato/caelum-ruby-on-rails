class Qualificacao < ActiveRecord::Base
  validates_presence_of :cliente_id, :restaurante_id
  #validates_associated :clientes, :restaurantes
  belongs_to :restaurante
  belongs_to :cliente
  has_one :receita
  has_many :comentarios, as: :comentavel
end
