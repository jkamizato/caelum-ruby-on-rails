class CreateQualificacaos < ActiveRecord::Migration
  def change
    create_table :qualificacaos do |t|
      t.float :nota
      t.float :valor_gasto
      t.timestamps null: false
    end
  end
end
