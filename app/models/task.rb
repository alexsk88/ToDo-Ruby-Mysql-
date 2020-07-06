class Task < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: {minimum:2, maximum:50}
  validates :state , inclusion:{in:[true, false]}
  validates :detail, length: {minimum:20, maximum:200}
end
