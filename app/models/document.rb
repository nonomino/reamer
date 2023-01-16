class Document < ApplicationRecord
    belongs_to :folder
    has_many :tags
    has_many :obj_types
end
