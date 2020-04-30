class CreateJoinTableAuthorPublishedMaterial < ActiveRecord::Migration[5.2]
  def change
    create_join_table :authors, :publications do |t|
      # t.index [:author_id, :publication_id]
      # t.index [:publication_id, :author_id]
    end
  end
end
