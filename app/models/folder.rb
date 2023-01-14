class Folder < ApplicationRecord
  has_many :documents
  accepts_nested_attributes_for :documents
end
