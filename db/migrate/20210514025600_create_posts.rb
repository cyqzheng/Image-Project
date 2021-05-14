class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :link
      t.text :caption
      t.text :tags

      t.timestamps
    end
  end
end
