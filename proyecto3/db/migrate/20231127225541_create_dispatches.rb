class CreateDispatches < ActiveRecord::Migration[6.1]
  def change
    create_table :dispatches do |t|
      t.time :horario
      t.boolean :switch
      t.string :origen
      t.string :destino

      t.timestamps
    end
  end
end
