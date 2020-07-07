class Task < ApplicationRecord
  belongs_to :user
#   validates :name, presence: true, length: {minimum:2, maximum:50}
#   validates :state , inclusion:{in:[true, false]}
#   validates :detail, length: {minimum:20, maximum:200}

  before_save :ejemple

  private

  def ejemple
    puts "QUE IMPRIME"
    puts ".....|#{self.name}"
   puts "------||||||||||||#{self.date_start}"
  end

#   private
#   def date_cannot_be_in_the_past
#     if expiration_date.present? && expiration_date < Date.today
#       errors.add(:expiration_date, "can't be in the past")
#     end
#   end
end
