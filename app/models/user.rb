class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile, dependent: :destroy
  has_one_attached :avatar
  has_many :jobs
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one_attached :cv

  validate :correct_cv_mime_type

  def correct_cv_mime_type
    if cv.attached? && !document.content_type.in?(%w(application/pdf))
      document.purge # delete the uploaded file
      errors.add(:cv, 'Must be a PDF file')
    end
  end

  acts_as_voter

  has_many :conversations
  has_many :messages, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}"
  end


end
