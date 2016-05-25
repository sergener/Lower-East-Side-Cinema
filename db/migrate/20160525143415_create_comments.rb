class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body, null: false
      t.references :user, foreign_key: true
      t.references :rating, foreign_key: true

      t.timestamps null: false
    end
  end
end
