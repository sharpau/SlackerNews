class AddUserToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :user, :string
  end
end
