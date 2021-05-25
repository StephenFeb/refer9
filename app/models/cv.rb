class Cv < ApplicationRecord

mount_uploader :resume, ResumeUploader 
validates :title, presence: true

end
