class CreateMotorista < ActiveRecord::Migration
  def change
    create_table :motorista do |t|
      t.string :nome
      t.string :cpf
      t.string :tipo_caminhao
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
  end
end
