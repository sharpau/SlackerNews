class Submission < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 10 }
  validates :link, presence: true
  has_many :comments, dependent: :destroy
end
