class AddDefaultVotesOne < ActiveRecord::Migration
  def change
    change_column :submissions, :votes, :integer, :default => 1
  end
end
