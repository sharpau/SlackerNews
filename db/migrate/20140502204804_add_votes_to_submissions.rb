class AddVotesToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :votes, :integer
  end
end
