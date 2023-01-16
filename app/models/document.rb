class Document < ApplicationRecord
    has_one_attached :file
    belongs_to :folder
    has_many :tags
    has_many :obj_types
end