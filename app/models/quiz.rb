class Quiz < ApplicationRecord

    has_many :questions, dependent: :destroy

    accepts_nested_attributes_for :questions, allow_destroy: true

    def to_s 
        return title
    end
end