class Book < ApplicationRecord
  belongs_to :author, inverse_of: :books

  # Essa ligação é feito por causa da associação polifórmica
  has_many :pictures, as: :imageable
end