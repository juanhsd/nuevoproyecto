class CreateCodes < ActiveRecord::Migration[6.1]
  def change
    create_table :codes do |t|
      t.string :code
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
