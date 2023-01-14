class Document < ApplicationRecord
    belongs_to :folder
    has_many :tags
    has_one :obj_type
    accepts_nested_attributes_for :obj_type, :tags
end
