class Post < ApplicationRecord
  acts_as_votable
  has_many :comments, dependent: :destroy
  belongs_to :user
  validates :content, presence: true
end
