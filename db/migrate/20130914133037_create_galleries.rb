class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title
      t.string :description
      t.string :picture
      t.string :user_id

      t.timestamps
    end
  end
end
