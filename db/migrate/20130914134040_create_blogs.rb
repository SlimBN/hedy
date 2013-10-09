class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :slug
      t.integer :user_id
      t.text :content
      t.string :cover

      t.timestamps
    end
  end
end
