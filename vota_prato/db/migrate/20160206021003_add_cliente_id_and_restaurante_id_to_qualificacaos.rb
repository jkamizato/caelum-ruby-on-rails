class AddClienteIdAndRestauranteIdToQualificacaos < ActiveRecord::Migration
  def change
    add_column :qualificacaos, :cliente_id, :integer
    add_column :qualificacaos, :restaurante_id, :integer
  end
end
