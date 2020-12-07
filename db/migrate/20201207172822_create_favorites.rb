class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.string :title
      t.string :description
      t.string :link_to_image
      t.string :link_to_story

      t.timestamps
    end
  end
end
