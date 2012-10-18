class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.integer :admin_id
      t.string :body

      t.timestamps
    end
  end
end
