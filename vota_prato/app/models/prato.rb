class Prato < ActiveRecord::Base
  validates_presence_of :nome, message: " - deve ser preenchido"
  validates_uniqueness_of :nome, message: " - nome já cadastrado"
  validate :validate_presence_of_more_than_one_restaurante

  private
  def validate_presence_of_more_than_one_restaurante
    error.add("restaurante",
    "deve haver ao menos um restaurante") if restaurante.empty?
  end
end
