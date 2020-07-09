class Task < ApplicationRecord
  belongs_to :user
#   validates :name, presence: true, length: {minimum:2, maximum:50}
#   validates :state , inclusion:{in:[true, false]}
#   validates :detail, length: {minimum:20, maximum:200}

# No olvidad crear :file en el controller para que lo reciba
  has_attached_file :file
  validates_attachment_content_type :file, content_type: ["image/jpeg", "image/gif", "image/png","application/pdf"]


  # Geneara PDF
  # instalas gemas wicked_pdf y binaries bla bla mirar dos 
  # que converte de HTML A PDF
  # rails g wicked_pdf  -> Inicializa el proyecto a pdf


  


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
