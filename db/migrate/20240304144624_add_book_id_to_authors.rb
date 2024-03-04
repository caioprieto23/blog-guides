class AddBookIdToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :book_id, :integer
  end
end
