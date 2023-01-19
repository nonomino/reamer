class Document < ApplicationRecord
    has_one_attached :file
    belongs_to :folder
    has_many :tags
    has_one :obj_type
end