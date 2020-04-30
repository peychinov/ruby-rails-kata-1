class CreatePublications < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|
      t.string :title, null: false
      t.string :isbn, null: false
      t.text :description
      t.datetime :published_at

      t.timestamps
    end
  end
end
