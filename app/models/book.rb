class Book < ApplicationRecord
  has_many :authors, inverse_of: :books
end