class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :image
      t.string :description
      t.timestamps
    end
  end
end
