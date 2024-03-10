class Author < ApplicationRecord
  has_many :books, inverse_of: :author, dependent: :destroy

  # Essa ligação é feito por causa da associação polifórmica
  has_many :pictures, as: :imageable
end