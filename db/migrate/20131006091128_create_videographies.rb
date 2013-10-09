class CreateVideographies < ActiveRecord::Migration
  def change
    create_table :videographies do |t|
      t.string :title
      t.text :embed
      t.string :code
      t.text :description
      t.string :ayna
      t.string :wa9tesh

      t.timestamps
    end
  end
end
