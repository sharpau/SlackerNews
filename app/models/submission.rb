class Submission < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 10 }
  validates :link, presence: true
end
