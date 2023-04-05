class Add < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :end, :date
  end
end
