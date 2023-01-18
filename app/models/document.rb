class Document < ApplicationRecord
    belongs_to :documents_tags
    has_one_attached :file
    belongs_to :folder
    has_and_belongs_to_many :tags
    has_many :obj_types
end