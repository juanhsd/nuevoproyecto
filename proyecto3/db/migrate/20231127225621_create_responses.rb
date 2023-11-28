class CreateResponses < ActiveRecord::Migration[6.1]
  def change
    create_table :responses do |t|
      t.text :content
      t.belongs_to :request, null: false, foreign_key: true
      t.string :rol

      t.timestamps
    end
  end
end
