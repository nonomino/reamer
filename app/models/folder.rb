class Folder < ApplicationRecord
  has_many :documents
 accepts_nested_attributes_for :documents
  validates :name, uniqueness: true
  def documents_attributes=(documents_attributes)
   raise documents_attributes.inspect
      documents_attributes.each do |i, x|
          if x[:title].length > 0
             self.documents.build x
      end
  end
end
end