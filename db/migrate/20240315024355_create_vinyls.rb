class CreateVinyls < ActiveRecord::Migration[7.0]
  def change
    create_table :vinyls do |t|
      t.belongs_to :author, index: true
      t.datetime :published_at
      t.string :name
      t.text :description
      t.decimal :value
      t.integer :quantity
      t.string :type

      t.timestamps
    end
  end
end
