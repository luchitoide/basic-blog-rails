class Post < ApplicationRecord
    has_many :taggings
    has_many :tags, through: :taggings
    acts_as_taggable_on :tags
end
