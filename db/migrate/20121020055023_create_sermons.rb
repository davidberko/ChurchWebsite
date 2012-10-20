class CreateSermons < ActiveRecord::Migration
  def change
    create_table :sermons do |t|
      t.string :title
      t.string :pastor

      t.timestamps
    end
  end
end
