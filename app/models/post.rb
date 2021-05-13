class Post < ApplicationRecord

  validates_presence_of :content
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  acts_as_votable

end
