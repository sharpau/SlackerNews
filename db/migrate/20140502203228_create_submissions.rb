class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :title
      t.string :link
      t.text :text

      t.timestamps
    end
  end
end
