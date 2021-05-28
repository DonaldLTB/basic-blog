class Article < ApplicationRecord
  belongs_to :user
  is_impressionable
end
