class Vinyl < ApplicationRecord
  belongs_to :author, inverse_of: :vinyls
end
