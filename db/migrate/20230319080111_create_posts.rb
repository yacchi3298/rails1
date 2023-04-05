class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.date :start
      t.boolean :allday

      t.timestamps
    end
  end
end
