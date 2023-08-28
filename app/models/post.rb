class Post < ApplicationRecord
    has_many :taggings
    has_many :tags, through: :taggings
    has_many :comments
    acts_as_taggable_on :tags
end
