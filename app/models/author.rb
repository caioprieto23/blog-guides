class Author < ApplicationRecord
  belongs_to :book, inverse_of: :authors
end