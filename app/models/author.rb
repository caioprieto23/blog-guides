class Author < ApplicationRecord
  has_many :books, inverse_of: :author, dependent: :destroy
  has_many :vinyls, inverse_of: :author

  # Essa ligação é feito por causa da associação polifórmica
  has_many :pictures, as: :imageable
end